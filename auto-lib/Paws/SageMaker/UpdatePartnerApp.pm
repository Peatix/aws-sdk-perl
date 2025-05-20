
package Paws::SageMaker::UpdatePartnerApp;
  use Moose;
  has ApplicationConfig => (is => 'ro', isa => 'Paws::SageMaker::PartnerAppConfig');
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str');
  has EnableIamSessionBasedIdentity => (is => 'ro', isa => 'Bool');
  has MaintenanceConfig => (is => 'ro', isa => 'Paws::SageMaker::PartnerAppMaintenanceConfig');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Tag]');
  has Tier => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdatePartnerApp');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::UpdatePartnerAppResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::UpdatePartnerApp - Arguments for method UpdatePartnerApp on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdatePartnerApp on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method UpdatePartnerApp.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdatePartnerApp.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $UpdatePartnerAppResponse = $api . sagemaker->UpdatePartnerApp(
      Arn               => 'MyPartnerAppArn',
      ApplicationConfig => {
        AdminUsers => [
          'MyNonEmptyString256', ...    # max: 256
        ],    # max: 5; OPTIONAL
        Arguments => {
          'MyNonEmptyString256' =>
            'MyString1024',    # key: max: 256, value: max: 1024
        },    # max: 5; OPTIONAL
      },    # OPTIONAL
      ClientToken                   => 'MyClientToken',    # OPTIONAL
      EnableIamSessionBasedIdentity => 1,                  # OPTIONAL
      MaintenanceConfig             => {
        MaintenanceWindowStart =>
          'MyWeeklyScheduleTimeFormat',                    # max: 9; OPTIONAL
      },    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      Tier => 'MyNonEmptyString64',    # OPTIONAL
    );

    # Results:
    my $Arn = $UpdatePartnerAppResponse->Arn;

    # Returns a L<Paws::SageMaker::UpdatePartnerAppResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/UpdatePartnerApp>

=head1 ATTRIBUTES


=head2 ApplicationConfig => L<Paws::SageMaker::PartnerAppConfig>

Configuration settings for the SageMaker Partner AI App.



=head2 B<REQUIRED> Arn => Str

The ARN of the SageMaker Partner AI App to update.



=head2 ClientToken => Str

A unique token that guarantees that the call to this API is idempotent.



=head2 EnableIamSessionBasedIdentity => Bool

When set to C<TRUE>, the SageMaker Partner AI App sets the Amazon Web
Services IAM session name or the authenticated IAM user as the identity
of the SageMaker Partner AI App user.



=head2 MaintenanceConfig => L<Paws::SageMaker::PartnerAppMaintenanceConfig>

Maintenance configuration settings for the SageMaker Partner AI App.



=head2 Tags => ArrayRef[L<Paws::SageMaker::Tag>]

Each tag consists of a key and an optional value. Tag keys must be
unique per resource.



=head2 Tier => Str

Indicates the instance type and size of the cluster attached to the
SageMaker Partner AI App.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdatePartnerApp in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

