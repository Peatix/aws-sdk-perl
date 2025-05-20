
package Paws::LakeFormation::GetTableObjects;
  use Moose;
  has CatalogId => (is => 'ro', isa => 'Str');
  has DatabaseName => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has PartitionPredicate => (is => 'ro', isa => 'Str');
  has QueryAsOfTime => (is => 'ro', isa => 'Str');
  has TableName => (is => 'ro', isa => 'Str', required => 1);
  has TransactionId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetTableObjects');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/GetTableObjects');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LakeFormation::GetTableObjectsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::GetTableObjects - Arguments for method GetTableObjects on L<Paws::LakeFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetTableObjects on the
L<AWS Lake Formation|Paws::LakeFormation> service. Use the attributes of this class
as arguments to method GetTableObjects.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetTableObjects.

=head1 SYNOPSIS

    my $lakeformation = Paws->service('LakeFormation');
    my $GetTableObjectsResponse = $lakeformation->GetTableObjects(
      DatabaseName       => 'MyNameString',
      TableName          => 'MyNameString',
      CatalogId          => 'MyCatalogIdString',        # OPTIONAL
      MaxResults         => 1,                          # OPTIONAL
      NextToken          => 'MyTokenString',            # OPTIONAL
      PartitionPredicate => 'MyPredicateString',        # OPTIONAL
      QueryAsOfTime      => '1970-01-01T01:00:00',      # OPTIONAL
      TransactionId      => 'MyTransactionIdString',    # OPTIONAL
    );

    # Results:
    my $NextToken = $GetTableObjectsResponse->NextToken;
    my $Objects   = $GetTableObjectsResponse->Objects;

    # Returns a L<Paws::LakeFormation::GetTableObjectsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lakeformation/GetTableObjects>

=head1 ATTRIBUTES


=head2 CatalogId => Str

The catalog containing the governed table. Defaults to the
callerE<rsquo>s account.



=head2 B<REQUIRED> DatabaseName => Str

The database containing the governed table.



=head2 MaxResults => Int

Specifies how many values to return in a page.



=head2 NextToken => Str

A continuation token if this is not the first call to retrieve these
objects.



=head2 PartitionPredicate => Str

A predicate to filter the objects returned based on the partition keys
defined in the governed table.

=over

=item *

The comparison operators supported are: =, E<gt>, E<lt>, E<gt>=, E<lt>=

=item *

The logical operators supported are: AND

=item *

The data types supported are integer, long, date(yyyy-MM-dd),
timestamp(yyyy-MM-dd HH:mm:ssXXX or yyyy-MM-dd HH:mm:ss"), string and
decimal.

=back




=head2 QueryAsOfTime => Str

The time as of when to read the governed table contents. If not set,
the most recent transaction commit time is used. Cannot be specified
along with C<TransactionId>.



=head2 B<REQUIRED> TableName => Str

The governed table for which to retrieve objects.



=head2 TransactionId => Str

The transaction ID at which to read the governed table contents. If
this transaction has aborted, an error is returned. If not set,
defaults to the most recent committed transaction. Cannot be specified
along with C<QueryAsOfTime>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetTableObjects in L<Paws::LakeFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

