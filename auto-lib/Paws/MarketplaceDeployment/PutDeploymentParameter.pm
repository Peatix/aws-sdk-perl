
package Paws::MarketplaceDeployment::PutDeploymentParameter;
  use Moose;
  has AgreementId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'agreementId', required => 1);
  has Catalog => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'catalog', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has DeploymentParameter => (is => 'ro', isa => 'Paws::MarketplaceDeployment::DeploymentParameterInput', traits => ['NameInRequest'], request_name => 'deploymentParameter', required => 1);
  has ExpirationDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'expirationDate');
  has ProductId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'productId', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::MarketplaceDeployment::TagsMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutDeploymentParameter');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/catalogs/{catalog}/products/{productId}/deployment-parameters');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MarketplaceDeployment::PutDeploymentParameterResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MarketplaceDeployment::PutDeploymentParameter - Arguments for method PutDeploymentParameter on L<Paws::MarketplaceDeployment>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutDeploymentParameter on the
L<AWS Marketplace Deployment Service|Paws::MarketplaceDeployment> service. Use the attributes of this class
as arguments to method PutDeploymentParameter.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutDeploymentParameter.

=head1 SYNOPSIS

    my $deployment-marketplace = Paws->service('MarketplaceDeployment');
    my $PutDeploymentParameterResponse =
      $deployment -marketplace->PutDeploymentParameter(
      AgreementId         => 'MyResourceId',
      Catalog             => 'MyCatalog',
      DeploymentParameter => {
        Name         => 'MyDeploymentParameterName',    # min: 1, max: 400
        SecretString => 'MySecretString',               # min: 1, max: 15000

      },
      ProductId      => 'MyResourceId',
      ClientToken    => 'MyClientToken',                # OPTIONAL
      ExpirationDate => '1970-01-01T01:00:00',          # OPTIONAL
      Tags           => {
        'MyTagKey' =>
          'MyTagValue',    # key: min: 1, max: 128, value: min: 1, max: 256
      },    # OPTIONAL
      );

    # Results:
    my $AgreementId = $PutDeploymentParameterResponse->AgreementId;
    my $DeploymentParameterId =
      $PutDeploymentParameterResponse->DeploymentParameterId;
    my $ResourceArn = $PutDeploymentParameterResponse->ResourceArn;
    my $Tags        = $PutDeploymentParameterResponse->Tags;

# Returns a L<Paws::MarketplaceDeployment::PutDeploymentParameterResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/deployment-marketplace/PutDeploymentParameter>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AgreementId => Str

The unique identifier of the agreement.



=head2 B<REQUIRED> Catalog => Str

The catalog related to the request. Fixed value: C<AWSMarketplace>



=head2 ClientToken => Str

The idempotency token for deployment parameters. A unique identifier
for the new version.

This field is not required if you're calling using an AWS SDK.
Otherwise, a C<clientToken> must be provided with the request.



=head2 B<REQUIRED> DeploymentParameter => L<Paws::MarketplaceDeployment::DeploymentParameterInput>

The deployment parameter targeted to the acceptor of an agreement for
which to create the AWS Secret Manager resource.



=head2 ExpirationDate => Str

The date when deployment parameters expire and are scheduled for
deletion.



=head2 B<REQUIRED> ProductId => Str

The product for which AWS Marketplace will save secrets for the
buyerE<rsquo>s account.



=head2 Tags => L<Paws::MarketplaceDeployment::TagsMap>

A map of key-value pairs, where each pair represents a tag saved to the
resource. Tags will only be applied for create operations, and they'll
be ignored if the resource already exists.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutDeploymentParameter in L<Paws::MarketplaceDeployment>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

