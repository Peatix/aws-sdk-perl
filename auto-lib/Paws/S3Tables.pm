package Paws::S3Tables;
  use Moose;
  sub service { 's3tables' }
  sub signing_name { 's3tables' }
  sub version { '2018-05-10' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateNamespace {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Tables::CreateNamespace', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTable {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Tables::CreateTable', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTableBucket {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Tables::CreateTableBucket', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteNamespace {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Tables::DeleteNamespace', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTable {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Tables::DeleteTable', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTableBucket {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Tables::DeleteTableBucket', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTableBucketEncryption {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Tables::DeleteTableBucketEncryption', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTableBucketPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Tables::DeleteTableBucketPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTablePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Tables::DeleteTablePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetNamespace {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Tables::GetNamespace', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTable {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Tables::GetTable', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTableBucket {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Tables::GetTableBucket', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTableBucketEncryption {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Tables::GetTableBucketEncryption', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTableBucketMaintenanceConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Tables::GetTableBucketMaintenanceConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTableBucketPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Tables::GetTableBucketPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTableEncryption {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Tables::GetTableEncryption', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTableMaintenanceConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Tables::GetTableMaintenanceConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTableMaintenanceJobStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Tables::GetTableMaintenanceJobStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTableMetadataLocation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Tables::GetTableMetadataLocation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTablePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Tables::GetTablePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListNamespaces {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Tables::ListNamespaces', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTableBuckets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Tables::ListTableBuckets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTables {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Tables::ListTables', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutTableBucketEncryption {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Tables::PutTableBucketEncryption', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutTableBucketMaintenanceConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Tables::PutTableBucketMaintenanceConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutTableBucketPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Tables::PutTableBucketPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutTableMaintenanceConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Tables::PutTableMaintenanceConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutTablePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Tables::PutTablePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RenameTable {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Tables::RenameTable', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateTableMetadataLocation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3Tables::UpdateTableMetadataLocation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllNamespaces {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListNamespaces(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->continuationToken) {
        $next_result = $self->ListNamespaces(@_, continuationToken => $next_result->continuationToken);
        push @{ $result->namespaces }, @{ $next_result->namespaces };
      }
      return $result;
    } else {
      while ($result->continuationToken) {
        $callback->($_ => 'namespaces') foreach (@{ $result->namespaces });
        $result = $self->ListNamespaces(@_, continuationToken => $result->continuationToken);
      }
      $callback->($_ => 'namespaces') foreach (@{ $result->namespaces });
    }

    return undef
  }
  sub ListAllTableBuckets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTableBuckets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->continuationToken) {
        $next_result = $self->ListTableBuckets(@_, continuationToken => $next_result->continuationToken);
        push @{ $result->tableBuckets }, @{ $next_result->tableBuckets };
      }
      return $result;
    } else {
      while ($result->continuationToken) {
        $callback->($_ => 'tableBuckets') foreach (@{ $result->tableBuckets });
        $result = $self->ListTableBuckets(@_, continuationToken => $result->continuationToken);
      }
      $callback->($_ => 'tableBuckets') foreach (@{ $result->tableBuckets });
    }

    return undef
  }
  sub ListAllTables {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTables(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->continuationToken) {
        $next_result = $self->ListTables(@_, continuationToken => $next_result->continuationToken);
        push @{ $result->tables }, @{ $next_result->tables };
      }
      return $result;
    } else {
      while ($result->continuationToken) {
        $callback->($_ => 'tables') foreach (@{ $result->tables });
        $result = $self->ListTables(@_, continuationToken => $result->continuationToken);
      }
      $callback->($_ => 'tables') foreach (@{ $result->tables });
    }

    return undef
  }


  sub operations { qw/CreateNamespace CreateTable CreateTableBucket DeleteNamespace DeleteTable DeleteTableBucket DeleteTableBucketEncryption DeleteTableBucketPolicy DeleteTablePolicy GetNamespace GetTable GetTableBucket GetTableBucketEncryption GetTableBucketMaintenanceConfiguration GetTableBucketPolicy GetTableEncryption GetTableMaintenanceConfiguration GetTableMaintenanceJobStatus GetTableMetadataLocation GetTablePolicy ListNamespaces ListTableBuckets ListTables PutTableBucketEncryption PutTableBucketMaintenanceConfiguration PutTableBucketPolicy PutTableMaintenanceConfiguration PutTablePolicy RenameTable UpdateTableMetadataLocation / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Tables - Perl Interface to AWS Amazon S3 Tables

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('S3Tables');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

An Amazon S3 table represents a structured dataset consisting of
tabular data in Apache Parquet (https://parquet.apache.org/docs/)
format and related metadata. This data is stored inside an S3 table as
a subresource. All tables in a table bucket are stored in the Apache
Iceberg (https://iceberg.apache.org/docs/latest/) table format. Through
integration with the Amazon Web Services Glue Data Catalog
(https://docs.aws.amazon.com/https:/docs.aws.amazon.com/glue/latest/dg/catalog-and-crawler.html)
you can interact with your tables using Amazon Web Services analytics
services, such as Amazon Athena
(https://docs.aws.amazon.com/https:/docs.aws.amazon.com/athena/) and
Amazon Redshift
(https://docs.aws.amazon.com/https:/docs.aws.amazon.com/redshift/).
Amazon S3 manages maintenance of your tables through automatic file
compaction and snapshot management. For more information, see Amazon S3
table buckets
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-buckets.html).

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10>


=head1 METHODS

=head2 CreateNamespace

=over

=item Namespace => ArrayRef[Str|Undef]

=item TableBucketARN => Str


=back

Each argument is described in detail in: L<Paws::S3Tables::CreateNamespace>

Returns: a L<Paws::S3Tables::CreateNamespaceResponse> instance

Creates a namespace. A namespace is a logical grouping of tables within
your table bucket, which you can use to organize tables. For more
information, see Create a namespace
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-namespace-create.html)
in the I<Amazon Simple Storage Service User Guide>.

=over

=item Permissions

You must have the C<s3tables:CreateNamespace> permission to use this
operation.

=back



=head2 CreateTable

=over

=item Format => Str

=item Name => Str

=item Namespace => Str

=item TableBucketARN => Str

=item [EncryptionConfiguration => L<Paws::S3Tables::EncryptionConfiguration>]

=item [Metadata => L<Paws::S3Tables::TableMetadata>]


=back

Each argument is described in detail in: L<Paws::S3Tables::CreateTable>

Returns: a L<Paws::S3Tables::CreateTableResponse> instance

Creates a new table associated with the given namespace in a table
bucket. For more information, see Creating an Amazon S3 table
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-create.html)
in the I<Amazon Simple Storage Service User Guide>.

=over

=item Permissions

=over

=item *

You must have the C<s3tables:CreateTable> permission to use this
operation.

=item *

If you use this operation with the optional C<metadata> request
parameter you must have the C<s3tables:PutTableData> permission.

=item *

If you use this operation with the optional C<encryptionConfiguration>
request parameter you must have the C<s3tables:PutTableEncryption>
permission.

=back

Additionally,

=back



=head2 CreateTableBucket

=over

=item Name => Str

=item [EncryptionConfiguration => L<Paws::S3Tables::EncryptionConfiguration>]


=back

Each argument is described in detail in: L<Paws::S3Tables::CreateTableBucket>

Returns: a L<Paws::S3Tables::CreateTableBucketResponse> instance

Creates a table bucket. For more information, see Creating a table
bucket
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-buckets-create.html)
in the I<Amazon Simple Storage Service User Guide>.

=over

=item Permissions

=over

=item *

You must have the C<s3tables:CreateTableBucket> permission to use this
operation.

=item *

If you use this operation with the optional C<encryptionConfiguration>
parameter you must have the C<s3tables:PutTableBucketEncryption>
permission.

=back

=back



=head2 DeleteNamespace

=over

=item Namespace => Str

=item TableBucketARN => Str


=back

Each argument is described in detail in: L<Paws::S3Tables::DeleteNamespace>

Returns: nothing

Deletes a namespace. For more information, see Delete a namespace
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-namespace-delete.html)
in the I<Amazon Simple Storage Service User Guide>.

=over

=item Permissions

You must have the C<s3tables:DeleteNamespace> permission to use this
operation.

=back



=head2 DeleteTable

=over

=item Name => Str

=item Namespace => Str

=item TableBucketARN => Str

=item [VersionToken => Str]


=back

Each argument is described in detail in: L<Paws::S3Tables::DeleteTable>

Returns: nothing

Deletes a table. For more information, see Deleting an Amazon S3 table
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-delete.html)
in the I<Amazon Simple Storage Service User Guide>.

=over

=item Permissions

You must have the C<s3tables:DeleteTable> permission to use this
operation.

=back



=head2 DeleteTableBucket

=over

=item TableBucketARN => Str


=back

Each argument is described in detail in: L<Paws::S3Tables::DeleteTableBucket>

Returns: nothing

Deletes a table bucket. For more information, see Deleting a table
bucket
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-buckets-delete.html)
in the I<Amazon Simple Storage Service User Guide>.

=over

=item Permissions

You must have the C<s3tables:DeleteTableBucket> permission to use this
operation.

=back



=head2 DeleteTableBucketEncryption

=over

=item TableBucketARN => Str


=back

Each argument is described in detail in: L<Paws::S3Tables::DeleteTableBucketEncryption>

Returns: nothing

Deletes the encryption configuration for a table bucket.

=over

=item Permissions

You must have the C<s3tables:DeleteTableBucketEncryption> permission to
use this operation.

=back



=head2 DeleteTableBucketPolicy

=over

=item TableBucketARN => Str


=back

Each argument is described in detail in: L<Paws::S3Tables::DeleteTableBucketPolicy>

Returns: nothing

Deletes a table bucket policy. For more information, see Deleting a
table bucket policy
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-bucket-policy.html#table-bucket-policy-delete)
in the I<Amazon Simple Storage Service User Guide>.

=over

=item Permissions

You must have the C<s3tables:DeleteTableBucketPolicy> permission to use
this operation.

=back



=head2 DeleteTablePolicy

=over

=item Name => Str

=item Namespace => Str

=item TableBucketARN => Str


=back

Each argument is described in detail in: L<Paws::S3Tables::DeleteTablePolicy>

Returns: nothing

Deletes a table policy. For more information, see Deleting a table
policy
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-table-policy.html#table-policy-delete)
in the I<Amazon Simple Storage Service User Guide>.

=over

=item Permissions

You must have the C<s3tables:DeleteTablePolicy> permission to use this
operation.

=back



=head2 GetNamespace

=over

=item Namespace => Str

=item TableBucketARN => Str


=back

Each argument is described in detail in: L<Paws::S3Tables::GetNamespace>

Returns: a L<Paws::S3Tables::GetNamespaceResponse> instance

Gets details about a namespace. For more information, see Table
namespaces
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-namespace.html)
in the I<Amazon Simple Storage Service User Guide>.

=over

=item Permissions

You must have the C<s3tables:GetNamespace> permission to use this
operation.

=back



=head2 GetTable

=over

=item Name => Str

=item Namespace => Str

=item TableBucketARN => Str


=back

Each argument is described in detail in: L<Paws::S3Tables::GetTable>

Returns: a L<Paws::S3Tables::GetTableResponse> instance

Gets details about a table. For more information, see S3 Tables
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-tables.html)
in the I<Amazon Simple Storage Service User Guide>.

=over

=item Permissions

You must have the C<s3tables:GetTable> permission to use this
operation.

=back



=head2 GetTableBucket

=over

=item TableBucketARN => Str


=back

Each argument is described in detail in: L<Paws::S3Tables::GetTableBucket>

Returns: a L<Paws::S3Tables::GetTableBucketResponse> instance

Gets details on a table bucket. For more information, see Viewing
details about an Amazon S3 table bucket
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-buckets-details.html)
in the I<Amazon Simple Storage Service User Guide>.

=over

=item Permissions

You must have the C<s3tables:GetTableBucket> permission to use this
operation.

=back



=head2 GetTableBucketEncryption

=over

=item TableBucketARN => Str


=back

Each argument is described in detail in: L<Paws::S3Tables::GetTableBucketEncryption>

Returns: a L<Paws::S3Tables::GetTableBucketEncryptionResponse> instance

Gets the encryption configuration for a table bucket.

=over

=item Permissions

You must have the C<s3tables:GetTableBucketEncryption> permission to
use this operation.

=back



=head2 GetTableBucketMaintenanceConfiguration

=over

=item TableBucketARN => Str


=back

Each argument is described in detail in: L<Paws::S3Tables::GetTableBucketMaintenanceConfiguration>

Returns: a L<Paws::S3Tables::GetTableBucketMaintenanceConfigurationResponse> instance

Gets details about a maintenance configuration for a given table
bucket. For more information, see Amazon S3 table bucket maintenance
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-table-buckets-maintenance.html)
in the I<Amazon Simple Storage Service User Guide>.

=over

=item Permissions

You must have the C<s3tables:GetTableBucketMaintenanceConfiguration>
permission to use this operation.

=back



=head2 GetTableBucketPolicy

=over

=item TableBucketARN => Str


=back

Each argument is described in detail in: L<Paws::S3Tables::GetTableBucketPolicy>

Returns: a L<Paws::S3Tables::GetTableBucketPolicyResponse> instance

Gets details about a table bucket policy. For more information, see
Viewing a table bucket policy
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-bucket-policy.html#table-bucket-policy-get)
in the I<Amazon Simple Storage Service User Guide>.

=over

=item Permissions

You must have the C<s3tables:GetTableBucketPolicy> permission to use
this operation.

=back



=head2 GetTableEncryption

=over

=item Name => Str

=item Namespace => Str

=item TableBucketARN => Str


=back

Each argument is described in detail in: L<Paws::S3Tables::GetTableEncryption>

Returns: a L<Paws::S3Tables::GetTableEncryptionResponse> instance

Gets the encryption configuration for a table.

=over

=item Permissions

You must have the C<s3tables:GetTableEncryption> permission to use this
operation.

=back



=head2 GetTableMaintenanceConfiguration

=over

=item Name => Str

=item Namespace => Str

=item TableBucketARN => Str


=back

Each argument is described in detail in: L<Paws::S3Tables::GetTableMaintenanceConfiguration>

Returns: a L<Paws::S3Tables::GetTableMaintenanceConfigurationResponse> instance

Gets details about the maintenance configuration of a table. For more
information, see S3 Tables maintenance
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-maintenance.html)
in the I<Amazon Simple Storage Service User Guide>.

=over

=item Permissions

You must have the C<s3tables:GetTableMaintenanceConfiguration>
permission to use this operation.

=back



=head2 GetTableMaintenanceJobStatus

=over

=item Name => Str

=item Namespace => Str

=item TableBucketARN => Str


=back

Each argument is described in detail in: L<Paws::S3Tables::GetTableMaintenanceJobStatus>

Returns: a L<Paws::S3Tables::GetTableMaintenanceJobStatusResponse> instance

Gets the status of a maintenance job for a table. For more information,
see S3 Tables maintenance
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-maintenance.html)
in the I<Amazon Simple Storage Service User Guide>.

=over

=item Permissions

You must have the C<s3tables:GetTableMaintenanceJobStatus> permission
to use this operation.

=back



=head2 GetTableMetadataLocation

=over

=item Name => Str

=item Namespace => Str

=item TableBucketARN => Str


=back

Each argument is described in detail in: L<Paws::S3Tables::GetTableMetadataLocation>

Returns: a L<Paws::S3Tables::GetTableMetadataLocationResponse> instance

Gets the location of the table metadata.

=over

=item Permissions

You must have the C<s3tables:GetTableMetadataLocation> permission to
use this operation.

=back



=head2 GetTablePolicy

=over

=item Name => Str

=item Namespace => Str

=item TableBucketARN => Str


=back

Each argument is described in detail in: L<Paws::S3Tables::GetTablePolicy>

Returns: a L<Paws::S3Tables::GetTablePolicyResponse> instance

Gets details about a table policy. For more information, see Viewing a
table policy
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-table-policy.html#table-policy-get)
in the I<Amazon Simple Storage Service User Guide>.

=over

=item Permissions

You must have the C<s3tables:GetTablePolicy> permission to use this
operation.

=back



=head2 ListNamespaces

=over

=item TableBucketARN => Str

=item [ContinuationToken => Str]

=item [MaxNamespaces => Int]

=item [Prefix => Str]


=back

Each argument is described in detail in: L<Paws::S3Tables::ListNamespaces>

Returns: a L<Paws::S3Tables::ListNamespacesResponse> instance

Lists the namespaces within a table bucket. For more information, see
Table namespaces
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-namespace.html)
in the I<Amazon Simple Storage Service User Guide>.

=over

=item Permissions

You must have the C<s3tables:ListNamespaces> permission to use this
operation.

=back



=head2 ListTableBuckets

=over

=item [ContinuationToken => Str]

=item [MaxBuckets => Int]

=item [Prefix => Str]


=back

Each argument is described in detail in: L<Paws::S3Tables::ListTableBuckets>

Returns: a L<Paws::S3Tables::ListTableBucketsResponse> instance

Lists table buckets for your account. For more information, see S3
Table buckets
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-buckets.html)
in the I<Amazon Simple Storage Service User Guide>.

=over

=item Permissions

You must have the C<s3tables:ListTableBuckets> permission to use this
operation.

=back



=head2 ListTables

=over

=item TableBucketARN => Str

=item [ContinuationToken => Str]

=item [MaxTables => Int]

=item [Namespace => Str]

=item [Prefix => Str]


=back

Each argument is described in detail in: L<Paws::S3Tables::ListTables>

Returns: a L<Paws::S3Tables::ListTablesResponse> instance

List tables in the given table bucket. For more information, see S3
Tables
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-tables.html)
in the I<Amazon Simple Storage Service User Guide>.

=over

=item Permissions

You must have the C<s3tables:ListTables> permission to use this
operation.

=back



=head2 PutTableBucketEncryption

=over

=item EncryptionConfiguration => L<Paws::S3Tables::EncryptionConfiguration>

=item TableBucketARN => Str


=back

Each argument is described in detail in: L<Paws::S3Tables::PutTableBucketEncryption>

Returns: nothing

Sets the encryption configuration for a table bucket.

=over

=item Permissions

You must have the C<s3tables:PutTableBucketEncryption> permission to
use this operation.

If you choose SSE-KMS encryption you must grant the S3 Tables
maintenance principal access to your KMS key. For more information, see
Permissions requirements for S3 Tables SSE-KMS encryption

=back



=head2 PutTableBucketMaintenanceConfiguration

=over

=item TableBucketARN => Str

=item Type => Str

=item Value => L<Paws::S3Tables::TableBucketMaintenanceConfigurationValue>


=back

Each argument is described in detail in: L<Paws::S3Tables::PutTableBucketMaintenanceConfiguration>

Returns: nothing

Creates a new maintenance configuration or replaces an existing
maintenance configuration for a table bucket. For more information, see
Amazon S3 table bucket maintenance
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-table-buckets-maintenance.html)
in the I<Amazon Simple Storage Service User Guide>.

=over

=item Permissions

You must have the C<s3tables:PutTableBucketMaintenanceConfiguration>
permission to use this operation.

=back



=head2 PutTableBucketPolicy

=over

=item ResourcePolicy => Str

=item TableBucketARN => Str


=back

Each argument is described in detail in: L<Paws::S3Tables::PutTableBucketPolicy>

Returns: nothing

Creates a new maintenance configuration or replaces an existing table
bucket policy for a table bucket. For more information, see Adding a
table bucket policy
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-bucket-policy.html#table-bucket-policy-add)
in the I<Amazon Simple Storage Service User Guide>.

=over

=item Permissions

You must have the C<s3tables:PutTableBucketPolicy> permission to use
this operation.

=back



=head2 PutTableMaintenanceConfiguration

=over

=item Name => Str

=item Namespace => Str

=item TableBucketARN => Str

=item Type => Str

=item Value => L<Paws::S3Tables::TableMaintenanceConfigurationValue>


=back

Each argument is described in detail in: L<Paws::S3Tables::PutTableMaintenanceConfiguration>

Returns: nothing

Creates a new maintenance configuration or replaces an existing
maintenance configuration for a table. For more information, see S3
Tables maintenance
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-maintenance.html)
in the I<Amazon Simple Storage Service User Guide>.

=over

=item Permissions

You must have the C<s3tables:PutTableMaintenanceConfiguration>
permission to use this operation.

=back



=head2 PutTablePolicy

=over

=item Name => Str

=item Namespace => Str

=item ResourcePolicy => Str

=item TableBucketARN => Str


=back

Each argument is described in detail in: L<Paws::S3Tables::PutTablePolicy>

Returns: nothing

Creates a new maintenance configuration or replaces an existing table
policy for a table. For more information, see Adding a table policy
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-table-policy.html#table-policy-add)
in the I<Amazon Simple Storage Service User Guide>.

=over

=item Permissions

You must have the C<s3tables:PutTablePolicy> permission to use this
operation.

=back



=head2 RenameTable

=over

=item Name => Str

=item Namespace => Str

=item TableBucketARN => Str

=item [NewName => Str]

=item [NewNamespaceName => Str]

=item [VersionToken => Str]


=back

Each argument is described in detail in: L<Paws::S3Tables::RenameTable>

Returns: nothing

Renames a table or a namespace. For more information, see S3 Tables
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-tables.html)
in the I<Amazon Simple Storage Service User Guide>.

=over

=item Permissions

You must have the C<s3tables:RenameTable> permission to use this
operation.

=back



=head2 UpdateTableMetadataLocation

=over

=item MetadataLocation => Str

=item Name => Str

=item Namespace => Str

=item TableBucketARN => Str

=item VersionToken => Str


=back

Each argument is described in detail in: L<Paws::S3Tables::UpdateTableMetadataLocation>

Returns: a L<Paws::S3Tables::UpdateTableMetadataLocationResponse> instance

Updates the metadata location for a table. The metadata location of a
table must be an S3 URI that begins with the table's warehouse
location. The metadata location for an Apache Iceberg table must end
with C<.metadata.json>, or if the metadata file is Gzip-compressed,
C<.metadata.json.gz>.

=over

=item Permissions

You must have the C<s3tables:UpdateTableMetadataLocation> permission to
use this operation.

=back





=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllNamespaces(sub { },TableBucketARN => Str, [ContinuationToken => Str, MaxNamespaces => Int, Prefix => Str])

=head2 ListAllNamespaces(TableBucketARN => Str, [ContinuationToken => Str, MaxNamespaces => Int, Prefix => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - namespaces, passing the object as the first parameter, and the string 'namespaces' as the second parameter 

If not, it will return a a L<Paws::S3Tables::ListNamespacesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTableBuckets(sub { },[ContinuationToken => Str, MaxBuckets => Int, Prefix => Str])

=head2 ListAllTableBuckets([ContinuationToken => Str, MaxBuckets => Int, Prefix => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - tableBuckets, passing the object as the first parameter, and the string 'tableBuckets' as the second parameter 

If not, it will return a a L<Paws::S3Tables::ListTableBucketsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTables(sub { },TableBucketARN => Str, [ContinuationToken => Str, MaxTables => Int, Namespace => Str, Prefix => Str])

=head2 ListAllTables(TableBucketARN => Str, [ContinuationToken => Str, MaxTables => Int, Namespace => Str, Prefix => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - tables, passing the object as the first parameter, and the string 'tables' as the second parameter 

If not, it will return a a L<Paws::S3Tables::ListTablesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

