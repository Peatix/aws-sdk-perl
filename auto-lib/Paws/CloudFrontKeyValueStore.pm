package Paws::CloudFrontKeyValueStore;
  use Moose;
  sub service { 'cloudfront-keyvaluestore' }
  sub signing_name { 'cloudfront-keyvaluestore' }
  sub version { '2022-07-26' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub DeleteKey {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFrontKeyValueStore::DeleteKey', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeKeyValueStore {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFrontKeyValueStore::DescribeKeyValueStore', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetKey {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFrontKeyValueStore::GetKey', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListKeys {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFrontKeyValueStore::ListKeys', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutKey {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFrontKeyValueStore::PutKey', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateKeys {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFrontKeyValueStore::UpdateKeys', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllKeys {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListKeys(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListKeys(@_, NextToken => $next_result->NextToken);
        push @{ $result->Items }, @{ $next_result->Items };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Items') foreach (@{ $result->Items });
        $result = $self->ListKeys(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Items') foreach (@{ $result->Items });
    }

    return undef
  }


  sub operations { qw/DeleteKey DescribeKeyValueStore GetKey ListKeys PutKey UpdateKeys / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFrontKeyValueStore - Perl Interface to AWS Amazon CloudFront KeyValueStore

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('CloudFrontKeyValueStore');
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

Amazon CloudFront KeyValueStore Service to View and Update Data in a
KVS Resource

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudfront-keyvaluestore-2022-07-26>


=head1 METHODS

=head2 DeleteKey

=over

=item IfMatch => Str

=item Key => Str

=item KvsARN => Str


=back

Each argument is described in detail in: L<Paws::CloudFrontKeyValueStore::DeleteKey>

Returns: a L<Paws::CloudFrontKeyValueStore::DeleteKeyResponse> instance

Deletes the key value pair specified by the key.


=head2 DescribeKeyValueStore

=over

=item KvsARN => Str


=back

Each argument is described in detail in: L<Paws::CloudFrontKeyValueStore::DescribeKeyValueStore>

Returns: a L<Paws::CloudFrontKeyValueStore::DescribeKeyValueStoreResponse> instance

Returns metadata information about Key Value Store.


=head2 GetKey

=over

=item Key => Str

=item KvsARN => Str


=back

Each argument is described in detail in: L<Paws::CloudFrontKeyValueStore::GetKey>

Returns: a L<Paws::CloudFrontKeyValueStore::GetKeyResponse> instance

Returns a key value pair.


=head2 ListKeys

=over

=item KvsARN => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CloudFrontKeyValueStore::ListKeys>

Returns: a L<Paws::CloudFrontKeyValueStore::ListKeysResponse> instance

Returns a list of key value pairs.


=head2 PutKey

=over

=item IfMatch => Str

=item Key => Str

=item KvsARN => Str

=item Value => Str


=back

Each argument is described in detail in: L<Paws::CloudFrontKeyValueStore::PutKey>

Returns: a L<Paws::CloudFrontKeyValueStore::PutKeyResponse> instance

Creates a new key value pair or replaces the value of an existing key.


=head2 UpdateKeys

=over

=item IfMatch => Str

=item KvsARN => Str

=item [Deletes => ArrayRef[L<Paws::CloudFrontKeyValueStore::DeleteKeyRequestListItem>]]

=item [Puts => ArrayRef[L<Paws::CloudFrontKeyValueStore::PutKeyRequestListItem>]]


=back

Each argument is described in detail in: L<Paws::CloudFrontKeyValueStore::UpdateKeys>

Returns: a L<Paws::CloudFrontKeyValueStore::UpdateKeysResponse> instance

Puts or Deletes multiple key value pairs in a single, all-or-nothing
operation.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllKeys(sub { },KvsARN => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllKeys(KvsARN => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Items, passing the object as the first parameter, and the string 'Items' as the second parameter 

If not, it will return a a L<Paws::CloudFrontKeyValueStore::ListKeysResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

