
package Paws::Deadline::ListLimits;
  use Moose;
  has FarmId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'farmId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListLimits');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2023-10-12/farms/{farmId}/limits');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Deadline::ListLimitsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::ListLimits - Arguments for method ListLimits on L<Paws::Deadline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListLimits on the
L<AWSDeadlineCloud|Paws::Deadline> service. Use the attributes of this class
as arguments to method ListLimits.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListLimits.

=head1 SYNOPSIS

    my $deadline = Paws->service('Deadline');
    my $ListLimitsResponse = $deadline->ListLimits(
      FarmId     => 'MyFarmId',
      MaxResults => 1,             # OPTIONAL
      NextToken  => 'MyString',    # OPTIONAL
    );

    # Results:
    my $Limits    = $ListLimitsResponse->Limits;
    my $NextToken = $ListLimitsResponse->NextToken;

    # Returns a L<Paws::Deadline::ListLimitsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/deadline/ListLimits>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FarmId => Str

The unique identifier of the farm that contains the limits.



=head2 MaxResults => Int

The maximum number of limits to return in each page of results.



=head2 NextToken => Str

The token for the next set of results, or C<null> to start from the
beginning.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListLimits in L<Paws::Deadline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

