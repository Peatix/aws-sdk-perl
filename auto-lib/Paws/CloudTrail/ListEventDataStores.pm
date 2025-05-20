
package Paws::CloudTrail::ListEventDataStores;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListEventDataStores');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudTrail::ListEventDataStoresResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::ListEventDataStores - Arguments for method ListEventDataStores on L<Paws::CloudTrail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListEventDataStores on the
L<AWS CloudTrail|Paws::CloudTrail> service. Use the attributes of this class
as arguments to method ListEventDataStores.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListEventDataStores.

=head1 SYNOPSIS

    my $cloudtrail = Paws->service('CloudTrail');
    my $ListEventDataStoresResponse = $cloudtrail->ListEventDataStores(
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
    );

    # Results:
    my $EventDataStores = $ListEventDataStoresResponse->EventDataStores;
    my $NextToken       = $ListEventDataStoresResponse->NextToken;

    # Returns a L<Paws::CloudTrail::ListEventDataStoresResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudtrail/ListEventDataStores>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of event data stores to display on a single page.



=head2 NextToken => Str

A token you can use to get the next page of event data store results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListEventDataStores in L<Paws::CloudTrail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

