
package Paws::FSX::DescribeVolumes;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::FSX::VolumeFilter]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has VolumeIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeVolumes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FSX::DescribeVolumesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FSX::DescribeVolumes - Arguments for method DescribeVolumes on L<Paws::FSX>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeVolumes on the
L<Amazon FSx|Paws::FSX> service. Use the attributes of this class
as arguments to method DescribeVolumes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeVolumes.

=head1 SYNOPSIS

    my $fsx = Paws->service('FSX');
    my $DescribeVolumesResponse = $fsx->DescribeVolumes(
      Filters => [
        {
          Name => 'file-system-id'
          ,    # values: file-system-id, storage-virtual-machine-id; OPTIONAL
          Values => [
            'MyVolumeFilterValue', ...    # min: 1, max: 128
          ],    # max: 20; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
      VolumeIds  => [
        'MyVolumeId', ...             # min: 23, max: 23
      ],    # OPTIONAL
    );

    # Results:
    my $NextToken = $DescribeVolumesResponse->NextToken;
    my $Volumes   = $DescribeVolumesResponse->Volumes;

    # Returns a L<Paws::FSX::DescribeVolumesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/fsx/DescribeVolumes>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::FSX::VolumeFilter>]

Enter a filter C<Name> and C<Values> pair to view a select set of
volumes.



=head2 MaxResults => Int





=head2 NextToken => Str





=head2 VolumeIds => ArrayRef[Str|Undef]

The IDs of the volumes whose descriptions you want to retrieve.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeVolumes in L<Paws::FSX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

