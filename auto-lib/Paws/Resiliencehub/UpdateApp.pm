
package Paws::Resiliencehub::UpdateApp;
  use Moose;
  has AppArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'appArn', required => 1);
  has AssessmentSchedule => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assessmentSchedule');
  has ClearResiliencyPolicyArn => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'clearResiliencyPolicyArn');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has EventSubscriptions => (is => 'ro', isa => 'ArrayRef[Paws::Resiliencehub::EventSubscription]', traits => ['NameInRequest'], request_name => 'eventSubscriptions');
  has PermissionModel => (is => 'ro', isa => 'Paws::Resiliencehub::PermissionModel', traits => ['NameInRequest'], request_name => 'permissionModel');
  has PolicyArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policyArn');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateApp');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/update-app');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Resiliencehub::UpdateAppResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Resiliencehub::UpdateApp - Arguments for method UpdateApp on L<Paws::Resiliencehub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateApp on the
L<AWS Resilience Hub|Paws::Resiliencehub> service. Use the attributes of this class
as arguments to method UpdateApp.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateApp.

=head1 SYNOPSIS

    my $resiliencehub = Paws->service('Resiliencehub');
    my $UpdateAppResponse = $resiliencehub->UpdateApp(
      AppArn                   => 'MyArn',
      AssessmentSchedule       => 'Disabled',               # OPTIONAL
      ClearResiliencyPolicyArn => 1,                        # OPTIONAL
      Description              => 'MyEntityDescription',    # OPTIONAL
      EventSubscriptions       => [
        {
          EventType => 'ScheduledAssessmentFailure'
          ,    # values: ScheduledAssessmentFailure, DriftDetected
          Name        => 'MyString255',    # min: 1, max: 255
          SnsTopicArn => 'MyArn',
        },
        ...
      ],    # OPTIONAL
      PermissionModel => {
        Type => 'LegacyIAMUser',    # values: LegacyIAMUser, RoleBased
        CrossAccountRoleArns => [ 'MyIamRoleArn', ... ],    # max: 10; OPTIONAL
        InvokerRoleName      => 'MyIamRoleName',            # OPTIONAL
      },    # OPTIONAL
      PolicyArn => 'MyArn',    # OPTIONAL
    );

    # Results:
    my $App = $UpdateAppResponse->App;

    # Returns a L<Paws::Resiliencehub::UpdateAppResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/resiliencehub/UpdateApp>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppArn => Str

Amazon Resource Name (ARN) of the Resilience Hub application. The
format for this ARN is:
arn:C<partition>:resiliencehub:C<region>:C<account>:app/C<app-id>. For
more information about ARNs, see Amazon Resource Names (ARNs)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
in the I<Amazon Web Services General Reference> guide.



=head2 AssessmentSchedule => Str

Assessment execution schedule with 'Daily' or 'Disabled' values.

Valid values are: C<"Disabled">, C<"Daily">

=head2 ClearResiliencyPolicyArn => Bool

Specifies if the resiliency policy ARN should be cleared.



=head2 Description => Str

The optional description for an app.



=head2 EventSubscriptions => ArrayRef[L<Paws::Resiliencehub::EventSubscription>]

The list of events you would like to subscribe and get notification
for. Currently, Resilience Hub supports notifications only for B<Drift
detected> and B<Scheduled assessment failure> events.



=head2 PermissionModel => L<Paws::Resiliencehub::PermissionModel>

Defines the roles and credentials that Resilience Hub would use while
creating an application, importing its resources, and running an
assessment.



=head2 PolicyArn => Str

Amazon Resource Name (ARN) of the resiliency policy. The format for
this ARN is:
arn:C<partition>:resiliencehub:C<region>:C<account>:resiliency-policy/C<policy-id>.
For more information about ARNs, see Amazon Resource Names (ARNs)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
in the I<Amazon Web Services General Reference> guide.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateApp in L<Paws::Resiliencehub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

