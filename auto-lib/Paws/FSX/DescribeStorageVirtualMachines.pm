
package Paws::FSX::DescribeStorageVirtualMachines;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::FSX::StorageVirtualMachineFilter]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has StorageVirtualMachineIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeStorageVirtualMachines');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FSX::DescribeStorageVirtualMachinesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FSX::DescribeStorageVirtualMachines - Arguments for method DescribeStorageVirtualMachines on L<Paws::FSX>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeStorageVirtualMachines on the
L<Amazon FSx|Paws::FSX> service. Use the attributes of this class
as arguments to method DescribeStorageVirtualMachines.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeStorageVirtualMachines.

=head1 SYNOPSIS

    my $fsx = Paws->service('FSX');
    my $DescribeStorageVirtualMachinesResponse =
      $fsx->DescribeStorageVirtualMachines(
      Filters => [
        {
          Name   => 'file-system-id',    # values: file-system-id; OPTIONAL
          Values => [
            'MyStorageVirtualMachineFilterValue', ...    # min: 1, max: 128
          ],    # max: 20; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      MaxResults               => 1,                # OPTIONAL
      NextToken                => 'MyNextToken',    # OPTIONAL
      StorageVirtualMachineIds => [
        'MyStorageVirtualMachineId', ...            # min: 21, max: 21
      ],    # OPTIONAL
      );

    # Results:
    my $NextToken = $DescribeStorageVirtualMachinesResponse->NextToken;
    my $StorageVirtualMachines =
      $DescribeStorageVirtualMachinesResponse->StorageVirtualMachines;

    # Returns a L<Paws::FSX::DescribeStorageVirtualMachinesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/fsx/DescribeStorageVirtualMachines>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::FSX::StorageVirtualMachineFilter>]

Enter a filter name:value pair to view a select set of SVMs.



=head2 MaxResults => Int





=head2 NextToken => Str





=head2 StorageVirtualMachineIds => ArrayRef[Str|Undef]

Enter the ID of one or more SVMs that you want to view.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeStorageVirtualMachines in L<Paws::FSX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

