
package Paws::CloudFront::UpdateContinuousDeploymentPolicy;
  use Moose;
  has ContinuousDeploymentPolicyConfig => (is => 'ro', isa => 'Paws::CloudFront::ContinuousDeploymentPolicyConfig', traits => ['ParamInBody'], required => 1);
  has Id => (is => 'ro', isa => 'Str', uri_name => 'Id', traits => ['ParamInURI'], required => 1);
  has IfMatch => (is => 'ro', isa => 'Str', header_name => 'If-Match', traits => ['ParamInHeader']);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateContinuousDeploymentPolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2020-05-31/continuous-deployment-policy/{Id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFront::UpdateContinuousDeploymentPolicyResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::UpdateContinuousDeploymentPolicy - Arguments for method UpdateContinuousDeploymentPolicy on L<Paws::CloudFront>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateContinuousDeploymentPolicy2020_05_31 on the
L<Amazon CloudFront|Paws::CloudFront> service. Use the attributes of this class
as arguments to method UpdateContinuousDeploymentPolicy2020_05_31.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateContinuousDeploymentPolicy2020_05_31.

=head1 SYNOPSIS

    my $cloudfront = Paws->service('CloudFront');
    my $UpdateContinuousDeploymentPolicyResult =
      $cloudfront->UpdateContinuousDeploymentPolicy(
      ContinuousDeploymentPolicyConfig => {
        Enabled                     => 1,
        StagingDistributionDnsNames => {
          Quantity => 1,
          Items    => [ 'Mystring', ... ],    # OPTIONAL
        },
        TrafficConfig => {
          Type => 'SingleWeight',    # values: SingleWeight, SingleHeader
          SingleHeaderConfig => {
            Header => 'Mystring',
            Value  => 'Mystring',

          },                         # OPTIONAL
          SingleWeightConfig => {
            Weight                  => 1.0,
            SessionStickinessConfig => {
              IdleTTL    => 1,
              MaximumTTL => 1,

            },    # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
      },
      Id      => 'Mystring',
      IfMatch => 'Mystring',    # OPTIONAL
      );

    # Results:
    my $ContinuousDeploymentPolicy =
      $UpdateContinuousDeploymentPolicyResult->ContinuousDeploymentPolicy;
    my $ETag = $UpdateContinuousDeploymentPolicyResult->ETag;

 # Returns a L<Paws::CloudFront::UpdateContinuousDeploymentPolicyResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudfront/UpdateContinuousDeploymentPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ContinuousDeploymentPolicyConfig => L<Paws::CloudFront::ContinuousDeploymentPolicyConfig>

The continuous deployment policy configuration.



=head2 B<REQUIRED> Id => Str

The identifier of the continuous deployment policy that you are
updating.



=head2 IfMatch => Str

The current version (C<ETag> value) of the continuous deployment policy
that you are updating.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateContinuousDeploymentPolicy2020_05_31 in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

