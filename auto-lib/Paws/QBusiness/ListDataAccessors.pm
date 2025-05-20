
package Paws::QBusiness::ListDataAccessors;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'applicationId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDataAccessors');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{applicationId}/dataaccessors');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QBusiness::ListDataAccessorsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::ListDataAccessors - Arguments for method ListDataAccessors on L<Paws::QBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDataAccessors on the
L<QBusiness|Paws::QBusiness> service. Use the attributes of this class
as arguments to method ListDataAccessors.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDataAccessors.

=head1 SYNOPSIS

    my $qbusiness = Paws->service('QBusiness');
    my $ListDataAccessorsResponse = $qbusiness->ListDataAccessors(
      ApplicationId => 'MyApplicationId',
      MaxResults    => 1,                    # OPTIONAL
      NextToken     => 'MyNextToken1500',    # OPTIONAL
    );

    # Results:
    my $DataAccessors = $ListDataAccessorsResponse->DataAccessors;
    my $NextToken     = $ListDataAccessorsResponse->NextToken;

    # Returns a L<Paws::QBusiness::ListDataAccessorsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/qbusiness/ListDataAccessors>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The unique identifier of the Amazon Q Business application.



=head2 MaxResults => Int

The maximum number of results to return in a single call.



=head2 NextToken => Str

The token for the next set of results. (You received this token from a
previous call.)




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDataAccessors in L<Paws::QBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

