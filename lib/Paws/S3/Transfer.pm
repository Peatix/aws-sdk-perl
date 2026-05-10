package Paws::S3::Transfer;
use Moose;
use Carp qw(croak);
use Digest::MD5 qw(md5);
use MIME::Base64 qw(encode_base64);
use POSIX qw(ceil);

has client => (
  is       => 'ro',
  required => 1,
);

has part_size => (
  is      => 'ro',
  isa     => 'Int',
  default => 8 * 1024 * 1024,
);

has concurrency => (
  is      => 'ro',
  isa     => 'Int',
  default => 1,
);

has progress_callback => (
  is        => 'ro',
  isa       => 'CodeRef',
  predicate => 'has_progress_callback',
);

sub upload {
  my ($self, %args) = @_;

  my $bucket = $args{bucket} // croak "bucket is required";
  my $key    = $args{key}    // croak "key is required";
  my $source = $args{source};
  my $fh     = $args{fh};

  croak "either source (filename) or fh (filehandle) is required"
    unless defined $source || defined $fh;

  my $own_fh = 0;
  if (defined $source && !defined $fh) {
    open($fh, '<:raw', $source)
      or croak "cannot open source=$source: $!";
    $own_fh = 1;
  }

  my $file_size = $self->_file_size($fh, $source);

  my $result;
  if (defined $file_size && $file_size <= $self->part_size) {
    $result = $self->_upload_single($bucket, $key, $fh, $file_size, %args);
  } else {
    $result = $self->_upload_multipart($bucket, $key, $fh, $file_size, %args);
  }

  close($fh) if $own_fh;
  return $result;
}

sub download {
  my ($self, %args) = @_;

  my $bucket = $args{bucket} // croak "bucket is required";
  my $key    = $args{key}    // croak "key is required";
  my $dest   = $args{dest};
  my $fh     = $args{fh};

  croak "either dest (filename) or fh (filehandle) is required"
    unless defined $dest || defined $fh;

  my $own_fh = 0;
  if (defined $dest && !defined $fh) {
    open($fh, '>:raw', $dest)
      or croak "cannot open dest=$dest: $!";
    $own_fh = 1;
  }

  my $head = $self->client->HeadObject(
    Bucket => $bucket,
    Key    => $key,
  );
  my $total_size = $head->ContentLength;

  my $result;
  if ($total_size <= $self->part_size) {
    $result = $self->_download_single($bucket, $key, $fh, $total_size, %args);
  } else {
    $result = $self->_download_multipart($bucket, $key, $fh, $total_size, %args);
  }

  close($fh) if $own_fh;
  return $result;
}

sub _file_size {
  my ($self, $fh, $source) = @_;
  my @stat = stat($fh);
  return $stat[7] if @stat && $stat[7];
  if (defined $source) {
    my @fstat = stat($source);
    return $fstat[7] if @fstat;
  }
  return undef;
}

sub _upload_single {
  my ($self, $bucket, $key, $fh, $size, %args) = @_;

  my $body;
  my $bytes_read = read($fh, $body, $size);

  $self->_report_progress(0, $bytes_read, $size) if $self->has_progress_callback;

  return $self->client->PutObject(
    Bucket => $bucket,
    Key    => $key,
    Body   => $body,
    ($args{content_type} ? (ContentType => $args{content_type}) : ()),
  );
}

sub _upload_multipart {
  my ($self, $bucket, $key, $fh, $total_size, %args) = @_;

  my $upload = $self->client->CreateMultipartUpload(
    Bucket => $bucket,
    Key    => $key,
    ($args{content_type} ? (ContentType => $args{content_type}) : ()),
  );
  my $upload_id = $upload->UploadId;

  my @parts;
  my $part_number  = 1;
  my $bytes_sent   = 0;

  eval {
    while (1) {
      my $buf;
      my $n = read($fh, $buf, $self->part_size);
      last unless $n;

      my $md5 = encode_base64(md5($buf), '');

      my $part_resp = $self->client->UploadPart(
        Bucket     => $bucket,
        Key        => $key,
        UploadId   => $upload_id,
        PartNumber => $part_number,
        Body       => $buf,
        ContentMD5 => $md5,
      );

      push @parts, {
        ETag       => $part_resp->ETag,
        PartNumber => $part_number,
      };

      $bytes_sent += $n;
      $self->_report_progress($part_number, $bytes_sent, $total_size)
        if $self->has_progress_callback;

      $part_number++;
    }

    my $complete = $self->client->CompleteMultipartUpload(
      Bucket   => $bucket,
      Key      => $key,
      UploadId => $upload_id,
      MultipartUpload => { Parts => \@parts },
    );
    return $complete;
  };

  if (my $err = $@) {
    eval {
      $self->client->AbortMultipartUpload(
        Bucket   => $bucket,
        Key      => $key,
        UploadId => $upload_id,
      );
    };
    die $err;
  }
}

sub _download_single {
  my ($self, $bucket, $key, $fh, $total_size, %args) = @_;

  my $resp = $self->client->GetObject(
    Bucket => $bucket,
    Key    => $key,
  );

  print $fh $resp->Body;
  $self->_report_progress(0, $total_size, $total_size) if $self->has_progress_callback;
  return $resp;
}

sub _download_multipart {
  my ($self, $bucket, $key, $fh, $total_size, %args) = @_;

  my $part_size   = $self->part_size;
  my $num_parts   = ceil($total_size / $part_size);
  my $bytes_recv  = 0;

  for my $i (0 .. $num_parts - 1) {
    my $start = $i * $part_size;
    my $end   = $start + $part_size - 1;
    $end = $total_size - 1 if $end >= $total_size;

    my $range = sprintf("bytes=%d-%d", $start, $end);

    my $resp = $self->client->GetObject(
      Bucket => $bucket,
      Key    => $key,
      Range  => $range,
    );

    print $fh $resp->Body;
    $bytes_recv += ($end - $start + 1);
    $self->_report_progress($i + 1, $bytes_recv, $total_size)
      if $self->has_progress_callback;
  }

  return 1;
}

sub _report_progress {
  my ($self, $part, $bytes_transferred, $total_size) = @_;
  $self->progress_callback->(
    part              => $part,
    bytes_transferred => $bytes_transferred,
    total_size        => $total_size,
  );
}

__PACKAGE__->meta->make_immutable;
1;
