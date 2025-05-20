
package Paws::DevOpsGuru::DescribeOrganizationOverview;
  use Moose;
  has AccountIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has FromTime => (is => 'ro', isa => 'Str', required => 1);
  has OrganizationalUnitIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ToTime => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeOrganizationOverview');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/organization/overview');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DevOpsGuru::DescribeOrganizationOverviewResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DevOpsGuru::DescribeOrganizationOverview - Arguments for method DescribeOrganizationOverview on L<Paws::DevOpsGuru>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeOrganizationOverview on the
L<Amazon DevOps Guru|Paws::DevOpsGuru> service. Use the attributes of this class
as arguments to method DescribeOrganizationOverview.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeOrganizationOverview.

=head1 SYNOPSIS

    my $devops-guru = Paws->service('DevOpsGuru');
    my $DescribeOrganizationOverviewResponse =
      $devops -guru->DescribeOrganizationOverview(
      FromTime   => '1970-01-01T01:00:00',
      AccountIds => [
        'MyAwsAccountId', ...    # min: 12, max: 12
      ],    # OPTIONAL
      OrganizationalUnitIds => [
        'MyOrganizationalUnitId', ...    # max: 68
      ],    # OPTIONAL
      ToTime => '1970-01-01T01:00:00',    # OPTIONAL
      );

    # Results:
    my $ProactiveInsights =
      $DescribeOrganizationOverviewResponse->ProactiveInsights;
    my $ReactiveInsights =
      $DescribeOrganizationOverviewResponse->ReactiveInsights;

   # Returns a L<Paws::DevOpsGuru::DescribeOrganizationOverviewResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/devops-guru/DescribeOrganizationOverview>

=head1 ATTRIBUTES


=head2 AccountIds => ArrayRef[Str|Undef]

The ID of the Amazon Web Services account.



=head2 B<REQUIRED> FromTime => Str

The start of the time range passed in. The start time granularity is at
the day level. The floor of the start time is used. Returned
information occurred after this day.



=head2 OrganizationalUnitIds => ArrayRef[Str|Undef]

The ID of the organizational unit.



=head2 ToTime => Str

The end of the time range passed in. The start time granularity is at
the day level. The floor of the start time is used. Returned
information occurred before this day. If this is not specified, then
the current day is used.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeOrganizationOverview in L<Paws::DevOpsGuru>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

