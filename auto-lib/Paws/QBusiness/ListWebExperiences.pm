
package Paws::QBusiness::ListWebExperiences;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'applicationId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListWebExperiences');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{applicationId}/experiences');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QBusiness::ListWebExperiencesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::ListWebExperiences - Arguments for method ListWebExperiences on L<Paws::QBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListWebExperiences on the
L<QBusiness|Paws::QBusiness> service. Use the attributes of this class
as arguments to method ListWebExperiences.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListWebExperiences.

=head1 SYNOPSIS

    my $qbusiness = Paws->service('QBusiness');
    my $ListWebExperiencesResponse = $qbusiness->ListWebExperiences(
      ApplicationId => 'MyApplicationId',
      MaxResults    => 1,                   # OPTIONAL
      NextToken     => 'MyNextToken',       # OPTIONAL
    );

    # Results:
    my $NextToken      = $ListWebExperiencesResponse->NextToken;
    my $WebExperiences = $ListWebExperiencesResponse->WebExperiences;

    # Returns a L<Paws::QBusiness::ListWebExperiencesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/qbusiness/ListWebExperiences>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The identifier of the Amazon Q Business application linked to the
listed web experiences.



=head2 MaxResults => Int

The maximum number of Amazon Q Business Web Experiences to return.



=head2 NextToken => Str

If the C<maxResults> response was incomplete because there is more data
to retrieve, Amazon Q Business returns a pagination token in the
response. You can use this pagination token to retrieve the next set of
Amazon Q Business conversations.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListWebExperiences in L<Paws::QBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

