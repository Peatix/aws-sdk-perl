
package Paws::WorkSpaces::DescribeApplications;
  use Moose;
  has ApplicationIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ComputeTypeNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has LicenseType => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has OperatingSystemNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Owner => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeApplications');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkSpaces::DescribeApplicationsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::DescribeApplications - Arguments for method DescribeApplications on L<Paws::WorkSpaces>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeApplications on the
L<Amazon WorkSpaces|Paws::WorkSpaces> service. Use the attributes of this class
as arguments to method DescribeApplications.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeApplications.

=head1 SYNOPSIS

    my $workspaces = Paws->service('WorkSpaces');
    my $DescribeApplicationsResult = $workspaces->DescribeApplications(
      ApplicationIds   => [ 'MyWorkSpaceApplicationId', ... ],    # OPTIONAL
      ComputeTypeNames => [
        'VALUE',
        ... # values: VALUE, STANDARD, PERFORMANCE, POWER, GRAPHICS, POWERPRO, GENERALPURPOSE_4XLARGE, GENERALPURPOSE_8XLARGE, GRAPHICSPRO, GRAPHICS_G4DN, GRAPHICSPRO_G4DN
      ],    # OPTIONAL
      LicenseType          => 'LICENSED',             # OPTIONAL
      MaxResults           => 1,                      # OPTIONAL
      NextToken            => 'MyPaginationToken',    # OPTIONAL
      OperatingSystemNames => [
        'AMAZON_LINUX_2',
        ... # values: AMAZON_LINUX_2, UBUNTU_18_04, UBUNTU_20_04, UBUNTU_22_04, UNKNOWN, WINDOWS_10, WINDOWS_11, WINDOWS_7, WINDOWS_SERVER_2016, WINDOWS_SERVER_2019, WINDOWS_SERVER_2022, RHEL_8, ROCKY_8
      ],    # OPTIONAL
      Owner => 'MyWorkSpaceApplicationOwner',    # OPTIONAL
    );

    # Results:
    my $Applications = $DescribeApplicationsResult->Applications;
    my $NextToken    = $DescribeApplicationsResult->NextToken;

    # Returns a L<Paws::WorkSpaces::DescribeApplicationsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workspaces/DescribeApplications>

=head1 ATTRIBUTES


=head2 ApplicationIds => ArrayRef[Str|Undef]

The identifiers of one or more applications.



=head2 ComputeTypeNames => ArrayRef[Str|Undef]

The compute types supported by the applications.



=head2 LicenseType => Str

The license availability for the applications.

Valid values are: C<"LICENSED">, C<"UNLICENSED">

=head2 MaxResults => Int

The maximum number of applications to return.



=head2 NextToken => Str

If you received a C<NextToken> from a previous call that was paginated,
provide this token to receive the next set of results.



=head2 OperatingSystemNames => ArrayRef[Str|Undef]

The operating systems supported by the applications.



=head2 Owner => Str

The owner of the applications.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeApplications in L<Paws::WorkSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

