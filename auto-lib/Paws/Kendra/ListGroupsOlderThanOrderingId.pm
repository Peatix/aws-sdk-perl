
package Paws::Kendra::ListGroupsOlderThanOrderingId;
  use Moose;
  has DataSourceId => (is => 'ro', isa => 'Str');
  has IndexId => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has OrderingId => (is => 'ro', isa => 'Int', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListGroupsOlderThanOrderingId');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Kendra::ListGroupsOlderThanOrderingIdResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::ListGroupsOlderThanOrderingId - Arguments for method ListGroupsOlderThanOrderingId on L<Paws::Kendra>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListGroupsOlderThanOrderingId on the
L<AWSKendraFrontendService|Paws::Kendra> service. Use the attributes of this class
as arguments to method ListGroupsOlderThanOrderingId.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListGroupsOlderThanOrderingId.

=head1 SYNOPSIS

    my $kendra = Paws->service('Kendra');
    my $ListGroupsOlderThanOrderingIdResponse =
      $kendra->ListGroupsOlderThanOrderingId(
      IndexId      => 'MyIndexId',
      OrderingId   => 1,
      DataSourceId => 'MyDataSourceId',    # OPTIONAL
      MaxResults   => 1,                   # OPTIONAL
      NextToken    => 'MyNextToken',       # OPTIONAL
      );

    # Results:
    my $GroupsSummaries =
      $ListGroupsOlderThanOrderingIdResponse->GroupsSummaries;
    my $NextToken = $ListGroupsOlderThanOrderingIdResponse->NextToken;

    # Returns a L<Paws::Kendra::ListGroupsOlderThanOrderingIdResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kendra/ListGroupsOlderThanOrderingId>

=head1 ATTRIBUTES


=head2 DataSourceId => Str

The identifier of the data source for getting a list of groups mapped
to users before a given ordering timestamp identifier.



=head2 B<REQUIRED> IndexId => Str

The identifier of the index for getting a list of groups mapped to
users before a given ordering or timestamp identifier.



=head2 MaxResults => Int

The maximum number of returned groups that are mapped to users before a
given ordering or timestamp identifier.



=head2 NextToken => Str

If the previous response was incomplete (because there is more data to
retrieve), Amazon Kendra returns a pagination token in the response.
You can use this pagination token to retrieve the next set of groups
that are mapped to users before a given ordering or timestamp
identifier.



=head2 B<REQUIRED> OrderingId => Int

The timestamp identifier used for the latest C<PUT> or C<DELETE> action
for mapping users to their groups.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListGroupsOlderThanOrderingId in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

