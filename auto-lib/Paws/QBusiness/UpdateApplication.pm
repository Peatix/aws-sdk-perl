
package Paws::QBusiness::UpdateApplication;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'applicationId', required => 1);
  has AttachmentsConfiguration => (is => 'ro', isa => 'Paws::QBusiness::AttachmentsConfiguration', traits => ['NameInRequest'], request_name => 'attachmentsConfiguration');
  has AutoSubscriptionConfiguration => (is => 'ro', isa => 'Paws::QBusiness::AutoSubscriptionConfiguration', traits => ['NameInRequest'], request_name => 'autoSubscriptionConfiguration');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DisplayName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'displayName');
  has IdentityCenterInstanceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'identityCenterInstanceArn');
  has PersonalizationConfiguration => (is => 'ro', isa => 'Paws::QBusiness::PersonalizationConfiguration', traits => ['NameInRequest'], request_name => 'personalizationConfiguration');
  has QAppsConfiguration => (is => 'ro', isa => 'Paws::QBusiness::QAppsConfiguration', traits => ['NameInRequest'], request_name => 'qAppsConfiguration');
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateApplication');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{applicationId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QBusiness::UpdateApplicationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::UpdateApplication - Arguments for method UpdateApplication on L<Paws::QBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateApplication on the
L<QBusiness|Paws::QBusiness> service. Use the attributes of this class
as arguments to method UpdateApplication.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateApplication.

=head1 SYNOPSIS

    my $qbusiness = Paws->service('QBusiness');
    my $UpdateApplicationResponse = $qbusiness->UpdateApplication(
      ApplicationId            => 'MyApplicationId',
      AttachmentsConfiguration => {
        AttachmentsControlMode => 'ENABLED',    # values: ENABLED, DISABLED

      },    # OPTIONAL
      AutoSubscriptionConfiguration => {
        AutoSubscribe           => 'ENABLED',    # values: ENABLED, DISABLED
        DefaultSubscriptionType =>
          'Q_LITE',    # values: Q_LITE, Q_BUSINESS; OPTIONAL
      },    # OPTIONAL
      Description                  => 'MyDescription',        # OPTIONAL
      DisplayName                  => 'MyApplicationName',    # OPTIONAL
      IdentityCenterInstanceArn    => 'MyInstanceArn',        # OPTIONAL
      PersonalizationConfiguration => {
        PersonalizationControlMode => 'ENABLED',    # values: ENABLED, DISABLED

      },    # OPTIONAL
      QAppsConfiguration => {
        QAppsControlMode => 'ENABLED',    # values: ENABLED, DISABLED

      },    # OPTIONAL
      RoleArn => 'MyRoleArn',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/qbusiness/UpdateApplication>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The identifier of the Amazon Q Business application.



=head2 AttachmentsConfiguration => L<Paws::QBusiness::AttachmentsConfiguration>

An option to allow end users to upload files directly during chat.



=head2 AutoSubscriptionConfiguration => L<Paws::QBusiness::AutoSubscriptionConfiguration>

An option to enable updating the default subscription type assigned to
an Amazon Q Business application using IAM identity federation for user
management.



=head2 Description => Str

A description for the Amazon Q Business application.



=head2 DisplayName => Str

A name for the Amazon Q Business application.



=head2 IdentityCenterInstanceArn => Str

The Amazon Resource Name (ARN) of the IAM Identity Center instance you
are either creating forE<mdash>or connecting toE<mdash>your Amazon Q
Business application.



=head2 PersonalizationConfiguration => L<Paws::QBusiness::PersonalizationConfiguration>

Configuration information about chat response personalization. For more
information, see Personalizing chat responses
(https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/personalizing-chat-responses.html).



=head2 QAppsConfiguration => L<Paws::QBusiness::QAppsConfiguration>

An option to allow end users to create and use Amazon Q Apps in the web
experience.



=head2 RoleArn => Str

An Amazon Web Services Identity and Access Management (IAM) role that
gives Amazon Q Business permission to access Amazon CloudWatch logs and
metrics.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateApplication in L<Paws::QBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

