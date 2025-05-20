
package Paws::Bedrock::ListInferenceProfiles;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has TypeEquals => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'type');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListInferenceProfiles');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/inference-profiles');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Bedrock::ListInferenceProfilesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Bedrock::ListInferenceProfiles - Arguments for method ListInferenceProfiles on L<Paws::Bedrock>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListInferenceProfiles on the
L<Amazon Bedrock|Paws::Bedrock> service. Use the attributes of this class
as arguments to method ListInferenceProfiles.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListInferenceProfiles.

=head1 SYNOPSIS

    my $bedrock = Paws->service('Bedrock');
    my $ListInferenceProfilesResponse = $bedrock->ListInferenceProfiles(
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
      TypeEquals => 'SYSTEM_DEFINED',       # OPTIONAL
    );

    # Results:
    my $InferenceProfileSummaries =
      $ListInferenceProfilesResponse->InferenceProfileSummaries;
    my $NextToken = $ListInferenceProfilesResponse->NextToken;

    # Returns a L<Paws::Bedrock::ListInferenceProfilesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock/ListInferenceProfiles>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return in the response. If the total
number of results is greater than this value, use the token returned in
the response in the C<nextToken> field when making another request to
return the next batch of results.



=head2 NextToken => Str

If the total number of results is greater than the C<maxResults> value
provided in the request, enter the token returned in the C<nextToken>
field in the response in this field to return the next batch of
results.



=head2 TypeEquals => Str

Filters for inference profiles that match the type you specify.

=over

=item *

C<SYSTEM_DEFINED> E<ndash> The inference profile is defined by Amazon
Bedrock. You can route inference requests across regions with these
inference profiles.

=item *

C<APPLICATION> E<ndash> The inference profile was created by a user.
This type of inference profile can track metrics and costs when
invoking the model in it. The inference profile may route requests to
one or multiple regions.

=back


Valid values are: C<"SYSTEM_DEFINED">, C<"APPLICATION">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListInferenceProfiles in L<Paws::Bedrock>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

