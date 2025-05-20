
package Paws::EntityResolution::BatchDeleteUniqueId;
  use Moose;
  has InputSource => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'inputSource');
  has UniqueIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInHeader'], header_name => 'uniqueIds', required => 1);
  has WorkflowName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'workflowName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchDeleteUniqueId');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/matchingworkflows/{workflowName}/uniqueids');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EntityResolution::BatchDeleteUniqueIdOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EntityResolution::BatchDeleteUniqueId - Arguments for method BatchDeleteUniqueId on L<Paws::EntityResolution>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchDeleteUniqueId on the
L<AWS EntityResolution|Paws::EntityResolution> service. Use the attributes of this class
as arguments to method BatchDeleteUniqueId.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchDeleteUniqueId.

=head1 SYNOPSIS

    my $entityresolution = Paws->service('EntityResolution');
    my $BatchDeleteUniqueIdOutput = $entityresolution->BatchDeleteUniqueId(
      UniqueIds => [
        'MyHeaderSafeUniqueId', ...    # min: 1, max: 780
      ],
      WorkflowName => 'MyEntityName',
      InputSource  => 'MyBatchDeleteUniqueIdInputInputSourceString',  # OPTIONAL
    );

    # Results:
    my $Deleted = $BatchDeleteUniqueIdOutput->Deleted;
    my $DisconnectedUniqueIds =
      $BatchDeleteUniqueIdOutput->DisconnectedUniqueIds;
    my $Errors = $BatchDeleteUniqueIdOutput->Errors;
    my $Status = $BatchDeleteUniqueIdOutput->Status;

    # Returns a L<Paws::EntityResolution::BatchDeleteUniqueIdOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/entityresolution/BatchDeleteUniqueId>

=head1 ATTRIBUTES


=head2 InputSource => Str

The input source for the batch delete unique ID operation.



=head2 B<REQUIRED> UniqueIds => ArrayRef[Str|Undef]

The unique IDs to delete.



=head2 B<REQUIRED> WorkflowName => Str

The name of the workflow.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchDeleteUniqueId in L<Paws::EntityResolution>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

