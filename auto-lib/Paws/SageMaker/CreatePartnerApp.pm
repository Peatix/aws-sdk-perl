
package Paws::SageMaker::CreatePartnerApp;
  use Moose;
  has ApplicationConfig => (is => 'ro', isa => 'Paws::SageMaker::PartnerAppConfig');
  has AuthType => (is => 'ro', isa => 'Str', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str');
  has EnableIamSessionBasedIdentity => (is => 'ro', isa => 'Bool');
  has ExecutionRoleArn => (is => 'ro', isa => 'Str', required => 1);
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has MaintenanceConfig => (is => 'ro', isa => 'Paws::SageMaker::PartnerAppMaintenanceConfig');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Tag]');
  has Tier => (is => 'ro', isa => 'Str', required => 1);
  has Type => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePartnerApp');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::CreatePartnerAppResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreatePartnerApp - Arguments for method CreatePartnerApp on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreatePartnerApp on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method CreatePartnerApp.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePartnerApp.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $CreatePartnerAppResponse = $api . sagemaker->CreatePartnerApp(
      AuthType          => 'IAM',
      ExecutionRoleArn  => 'MyRoleArn',
      Name              => 'MyPartnerAppName',
      Tier              => 'MyNonEmptyString64',
      Type              => 'lakera-guard',
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
      KmsKeyId                      => 'MyKmsKeyId',       # OPTIONAL
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
    );

    # Results:
    my $Arn = $CreatePartnerAppResponse->Arn;

    # Returns a L<Paws::SageMaker::CreatePartnerAppResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/CreatePartnerApp>

=head1 ATTRIBUTES


=head2 ApplicationConfig => L<Paws::SageMaker::PartnerAppConfig>

Configuration settings for the SageMaker Partner AI App.



=head2 B<REQUIRED> AuthType => Str

The authorization type that users use to access the SageMaker Partner
AI App.

Valid values are: C<"IAM">

=head2 ClientToken => Str

A unique token that guarantees that the call to this API is idempotent.



=head2 EnableIamSessionBasedIdentity => Bool

When set to C<TRUE>, the SageMaker Partner AI App sets the Amazon Web
Services IAM session name or the authenticated IAM user as the identity
of the SageMaker Partner AI App user.



=head2 B<REQUIRED> ExecutionRoleArn => Str

The ARN of the IAM role that the partner application uses.



=head2 KmsKeyId => Str

SageMaker Partner AI Apps uses Amazon Web Services KMS to encrypt data
at rest using an Amazon Web Services managed key by default. For more
control, specify a customer managed key.



=head2 MaintenanceConfig => L<Paws::SageMaker::PartnerAppMaintenanceConfig>

Maintenance configuration settings for the SageMaker Partner AI App.



=head2 B<REQUIRED> Name => Str

The name to give the SageMaker Partner AI App.



=head2 Tags => ArrayRef[L<Paws::SageMaker::Tag>]

Each tag consists of a key and an optional value. Tag keys must be
unique per resource.



=head2 B<REQUIRED> Tier => Str

Indicates the instance type and size of the cluster attached to the
SageMaker Partner AI App.



=head2 B<REQUIRED> Type => Str

The type of SageMaker Partner AI App to create. Must be one of the
following: C<lakera-guard>, C<comet>, C<deepchecks-llm-evaluation>, or
C<fiddler>.

Valid values are: C<"lakera-guard">, C<"comet">, C<"deepchecks-llm-evaluation">, C<"fiddler">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePartnerApp in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

