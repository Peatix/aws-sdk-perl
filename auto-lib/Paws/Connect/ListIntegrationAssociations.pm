
package Paws::Connect::ListIntegrationAssociations;
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);
  has IntegrationArn => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'integrationArn');
  has IntegrationType => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'integrationType');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListIntegrationAssociations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/instance/{InstanceId}/integration-associations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::ListIntegrationAssociationsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::ListIntegrationAssociations - Arguments for method ListIntegrationAssociations on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListIntegrationAssociations on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method ListIntegrationAssociations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListIntegrationAssociations.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $ListIntegrationAssociationsResponse =
      $connect->ListIntegrationAssociations(
      InstanceId      => 'MyInstanceId',
      IntegrationArn  => 'MyARN',          # OPTIONAL
      IntegrationType => 'EVENT',          # OPTIONAL
      MaxResults      => 1,                # OPTIONAL
      NextToken       => 'MyNextToken',    # OPTIONAL
      );

    # Results:
    my $IntegrationAssociationSummaryList =
      $ListIntegrationAssociationsResponse->IntegrationAssociationSummaryList;
    my $NextToken = $ListIntegrationAssociationsResponse->NextToken;

    # Returns a L<Paws::Connect::ListIntegrationAssociationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/ListIntegrationAssociations>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance. You can find the
instance ID
(https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html)
in the Amazon Resource Name (ARN) of the instance.



=head2 IntegrationArn => Str

The Amazon Resource Name (ARN) of the integration.



=head2 IntegrationType => Str

The integration type.

Valid values are: C<"EVENT">, C<"VOICE_ID">, C<"PINPOINT_APP">, C<"WISDOM_ASSISTANT">, C<"WISDOM_KNOWLEDGE_BASE">, C<"WISDOM_QUICK_RESPONSES">, C<"Q_MESSAGE_TEMPLATES">, C<"CASES_DOMAIN">, C<"APPLICATION">, C<"FILE_SCANNER">, C<"SES_IDENTITY">, C<"ANALYTICS_CONNECTOR">, C<"CALL_TRANSFER_CONNECTOR">, C<"COGNITO_USER_POOL">

=head2 MaxResults => Int

The maximum number of results to return per page.



=head2 NextToken => Str

The token for the next set of results. Use the value returned in the
previous response in the next request to retrieve the next set of
results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListIntegrationAssociations in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

