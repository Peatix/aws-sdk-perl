
package Paws::DevOpsGuru::DescribeOrganizationHealth;
  use Moose;
  has AccountIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has OrganizationalUnitIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeOrganizationHealth');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/organization/health');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DevOpsGuru::DescribeOrganizationHealthResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DevOpsGuru::DescribeOrganizationHealth - Arguments for method DescribeOrganizationHealth on L<Paws::DevOpsGuru>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeOrganizationHealth on the
L<Amazon DevOps Guru|Paws::DevOpsGuru> service. Use the attributes of this class
as arguments to method DescribeOrganizationHealth.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeOrganizationHealth.

=head1 SYNOPSIS

    my $devops-guru = Paws->service('DevOpsGuru');
    my $DescribeOrganizationHealthResponse =
      $devops -guru->DescribeOrganizationHealth(
      AccountIds => [
        'MyAwsAccountId', ...    # min: 12, max: 12
      ],    # OPTIONAL
      OrganizationalUnitIds => [
        'MyOrganizationalUnitId', ...    # max: 68
      ],    # OPTIONAL
      );

    # Results:
    my $MetricsAnalyzed = $DescribeOrganizationHealthResponse->MetricsAnalyzed;
    my $OpenProactiveInsights =
      $DescribeOrganizationHealthResponse->OpenProactiveInsights;
    my $OpenReactiveInsights =
      $DescribeOrganizationHealthResponse->OpenReactiveInsights;
    my $ResourceHours = $DescribeOrganizationHealthResponse->ResourceHours;

    # Returns a L<Paws::DevOpsGuru::DescribeOrganizationHealthResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/devops-guru/DescribeOrganizationHealth>

=head1 ATTRIBUTES


=head2 AccountIds => ArrayRef[Str|Undef]

The ID of the Amazon Web Services account.



=head2 OrganizationalUnitIds => ArrayRef[Str|Undef]

The ID of the organizational unit.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeOrganizationHealth in L<Paws::DevOpsGuru>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

