
package Paws::Backup::DescribeFramework;
  use Moose;
  has FrameworkName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'frameworkName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeFramework');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/audit/frameworks/{frameworkName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Backup::DescribeFrameworkOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::DescribeFramework - Arguments for method DescribeFramework on L<Paws::Backup>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeFramework on the
L<AWS Backup|Paws::Backup> service. Use the attributes of this class
as arguments to method DescribeFramework.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeFramework.

=head1 SYNOPSIS

    my $backup = Paws->service('Backup');
    my $DescribeFrameworkOutput = $backup->DescribeFramework(
      FrameworkName => 'MyFrameworkName',

    );

    # Results:
    my $CreationTime         = $DescribeFrameworkOutput->CreationTime;
    my $DeploymentStatus     = $DescribeFrameworkOutput->DeploymentStatus;
    my $FrameworkArn         = $DescribeFrameworkOutput->FrameworkArn;
    my $FrameworkControls    = $DescribeFrameworkOutput->FrameworkControls;
    my $FrameworkDescription = $DescribeFrameworkOutput->FrameworkDescription;
    my $FrameworkName        = $DescribeFrameworkOutput->FrameworkName;
    my $FrameworkStatus      = $DescribeFrameworkOutput->FrameworkStatus;
    my $IdempotencyToken     = $DescribeFrameworkOutput->IdempotencyToken;

    # Returns a L<Paws::Backup::DescribeFrameworkOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/backup/DescribeFramework>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FrameworkName => Str

The unique name of a framework.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeFramework in L<Paws::Backup>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

