
package Paws::GuardDuty::GetOrganizationStatistics;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetOrganizationStatistics');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/organization/statistics');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GuardDuty::GetOrganizationStatisticsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::GetOrganizationStatistics - Arguments for method GetOrganizationStatistics on L<Paws::GuardDuty>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetOrganizationStatistics on the
L<Amazon GuardDuty|Paws::GuardDuty> service. Use the attributes of this class
as arguments to method GetOrganizationStatistics.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetOrganizationStatistics.

=head1 SYNOPSIS

    my $guardduty = Paws->service('GuardDuty');
    my $GetOrganizationStatisticsResponse =
      $guardduty->GetOrganizationStatistics();

    # Results:
    my $OrganizationDetails =
      $GetOrganizationStatisticsResponse->OrganizationDetails;

    # Returns a L<Paws::GuardDuty::GetOrganizationStatisticsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/guardduty/GetOrganizationStatistics>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetOrganizationStatistics in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

