
package Paws::IAM::DisableOrganizationsRootSessions;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisableOrganizationsRootSessions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IAM::DisableOrganizationsRootSessionsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DisableOrganizationsRootSessionsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::DisableOrganizationsRootSessions - Arguments for method DisableOrganizationsRootSessions on L<Paws::IAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisableOrganizationsRootSessions on the
L<AWS Identity and Access Management|Paws::IAM> service. Use the attributes of this class
as arguments to method DisableOrganizationsRootSessions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisableOrganizationsRootSessions.

=head1 SYNOPSIS

    my $iam = Paws->service('IAM');
    my $DisableOrganizationsRootSessionsResponse =
      $iam->DisableOrganizationsRootSessions();

    # Results:
    my $EnabledFeatures =
      $DisableOrganizationsRootSessionsResponse->EnabledFeatures;
    my $OrganizationId =
      $DisableOrganizationsRootSessionsResponse->OrganizationId;

    # Returns a L<Paws::IAM::DisableOrganizationsRootSessionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iam/DisableOrganizationsRootSessions>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisableOrganizationsRootSessions in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

