
package Paws::GuardDuty::DescribeOrganizationConfiguration;
  use Moose;
  has DetectorId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'detectorId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeOrganizationConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/detector/{detectorId}/admin');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GuardDuty::DescribeOrganizationConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::DescribeOrganizationConfiguration - Arguments for method DescribeOrganizationConfiguration on L<Paws::GuardDuty>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeOrganizationConfiguration on the
L<Amazon GuardDuty|Paws::GuardDuty> service. Use the attributes of this class
as arguments to method DescribeOrganizationConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeOrganizationConfiguration.

=head1 SYNOPSIS

    my $guardduty = Paws->service('GuardDuty');
    my $DescribeOrganizationConfigurationResponse =
      $guardduty->DescribeOrganizationConfiguration(
      DetectorId => 'MyDetectorId',
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyString',       # OPTIONAL
      );

    # Results:
    my $AutoEnable = $DescribeOrganizationConfigurationResponse->AutoEnable;
    my $AutoEnableOrganizationMembers =
      $DescribeOrganizationConfigurationResponse->AutoEnableOrganizationMembers;
    my $DataSources = $DescribeOrganizationConfigurationResponse->DataSources;
    my $Features    = $DescribeOrganizationConfigurationResponse->Features;
    my $MemberAccountLimitReached =
      $DescribeOrganizationConfigurationResponse->MemberAccountLimitReached;
    my $NextToken = $DescribeOrganizationConfigurationResponse->NextToken;

# Returns a L<Paws::GuardDuty::DescribeOrganizationConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/guardduty/DescribeOrganizationConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DetectorId => Str

The detector ID of the delegated administrator for which you need to
retrieve the information.

To find the C<detectorId> in the current Region, see the Settings page
in the GuardDuty console, or run the ListDetectors
(https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html)
API.



=head2 MaxResults => Int

You can use this parameter to indicate the maximum number of items that
you want in the response.



=head2 NextToken => Str

You can use this parameter when paginating results. Set the value of
this parameter to null on your first call to the list action. For
subsequent calls to the action, fill C<nextToken> in the request with
the value of C<NextToken> from the previous response to continue
listing data.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeOrganizationConfiguration in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

