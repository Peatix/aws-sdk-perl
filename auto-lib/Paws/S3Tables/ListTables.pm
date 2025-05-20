
package Paws::S3Tables::ListTables;
  use Moose;
  has ContinuationToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'continuationToken');
  has MaxTables => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxTables');
  has Namespace => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'namespace');
  has Prefix => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'prefix');
  has TableBucketARN => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'tableBucketARN', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTables');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/tables/{tableBucketARN}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3Tables::ListTablesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Tables::ListTables - Arguments for method ListTables on L<Paws::S3Tables>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTables on the
L<Amazon S3 Tables|Paws::S3Tables> service. Use the attributes of this class
as arguments to method ListTables.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTables.

=head1 SYNOPSIS

    my $s3tables = Paws->service('S3Tables');
    my $ListTablesResponse = $s3tables->ListTables(
      TableBucketARN    => 'MyTableBucketARN',
      ContinuationToken => 'MyNextToken',                        # OPTIONAL
      MaxTables         => 1,                                    # OPTIONAL
      Namespace         => 'MyNamespaceName',                    # OPTIONAL
      Prefix            => 'MyListTablesRequestPrefixString',    # OPTIONAL
    );

    # Results:
    my $ContinuationToken = $ListTablesResponse->ContinuationToken;
    my $Tables            = $ListTablesResponse->Tables;

    # Returns a L<Paws::S3Tables::ListTablesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3tables/ListTables>

=head1 ATTRIBUTES


=head2 ContinuationToken => Str

C<ContinuationToken> indicates to Amazon S3 that the list is being
continued on this bucket with a token. C<ContinuationToken> is
obfuscated and is not a real key. You can use this C<ContinuationToken>
for pagination of the list results.



=head2 MaxTables => Int

The maximum number of tables to return.



=head2 Namespace => Str

The namespace of the tables.



=head2 Prefix => Str

The prefix of the tables.



=head2 B<REQUIRED> TableBucketARN => Str

The Amazon resource Name (ARN) of the table bucket.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTables in L<Paws::S3Tables>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

