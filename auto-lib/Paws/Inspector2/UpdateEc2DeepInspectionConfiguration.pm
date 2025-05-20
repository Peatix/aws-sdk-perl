
package Paws::Inspector2::UpdateEc2DeepInspectionConfiguration;
  use Moose;
  has ActivateDeepInspection => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'activateDeepInspection');
  has PackagePaths => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'packagePaths');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateEc2DeepInspectionConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/ec2deepinspectionconfiguration/update');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Inspector2::UpdateEc2DeepInspectionConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector2::UpdateEc2DeepInspectionConfiguration - Arguments for method UpdateEc2DeepInspectionConfiguration on L<Paws::Inspector2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateEc2DeepInspectionConfiguration on the
L<Inspector2|Paws::Inspector2> service. Use the attributes of this class
as arguments to method UpdateEc2DeepInspectionConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateEc2DeepInspectionConfiguration.

=head1 SYNOPSIS

    my $inspector2 = Paws->service('Inspector2');
    my $UpdateEc2DeepInspectionConfigurationResponse =
      $inspector2->UpdateEc2DeepInspectionConfiguration(
      ActivateDeepInspection => 1,    # OPTIONAL
      PackagePaths           => [
        'MyPath', ...                 # min: 1, max: 512
      ],    # OPTIONAL
      );

    # Results:
    my $ErrorMessage =
      $UpdateEc2DeepInspectionConfigurationResponse->ErrorMessage;
    my $OrgPackagePaths =
      $UpdateEc2DeepInspectionConfigurationResponse->OrgPackagePaths;
    my $PackagePaths =
      $UpdateEc2DeepInspectionConfigurationResponse->PackagePaths;
    my $Status = $UpdateEc2DeepInspectionConfigurationResponse->Status;

# Returns a L<Paws::Inspector2::UpdateEc2DeepInspectionConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/inspector2/UpdateEc2DeepInspectionConfiguration>

=head1 ATTRIBUTES


=head2 ActivateDeepInspection => Bool

Specify C<TRUE> to activate Amazon Inspector deep inspection in your
account, or C<FALSE> to deactivate. Member accounts in an organization
cannot deactivate deep inspection, instead the delegated administrator
for the organization can deactivate a member account using
BatchUpdateMemberEc2DeepInspectionStatus
(https://docs.aws.amazon.com/inspector/v2/APIReference/API_BatchUpdateMemberEc2DeepInspectionStatus.html).



=head2 PackagePaths => ArrayRef[Str|Undef]

The Amazon Inspector deep inspection custom paths you are adding for
your account.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateEc2DeepInspectionConfiguration in L<Paws::Inspector2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

