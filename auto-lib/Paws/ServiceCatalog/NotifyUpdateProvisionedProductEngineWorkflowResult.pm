
package Paws::ServiceCatalog::NotifyUpdateProvisionedProductEngineWorkflowResult;
  use Moose;
  has FailureReason => (is => 'ro', isa => 'Str');
  has IdempotencyToken => (is => 'ro', isa => 'Str', required => 1);
  has Outputs => (is => 'ro', isa => 'ArrayRef[Paws::ServiceCatalog::RecordOutput]');
  has RecordId => (is => 'ro', isa => 'Str', required => 1);
  has Status => (is => 'ro', isa => 'Str', required => 1);
  has WorkflowToken => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'NotifyUpdateProvisionedProductEngineWorkflowResult');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceCatalog::NotifyUpdateProvisionedProductEngineWorkflowResultOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::NotifyUpdateProvisionedProductEngineWorkflowResult - Arguments for method NotifyUpdateProvisionedProductEngineWorkflowResult on L<Paws::ServiceCatalog>

=head1 DESCRIPTION

This class represents the parameters used for calling the method NotifyUpdateProvisionedProductEngineWorkflowResult on the
L<AWS Service Catalog|Paws::ServiceCatalog> service. Use the attributes of this class
as arguments to method NotifyUpdateProvisionedProductEngineWorkflowResult.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to NotifyUpdateProvisionedProductEngineWorkflowResult.

=head1 SYNOPSIS

    my $servicecatalog = Paws->service('ServiceCatalog');
    my $NotifyUpdateProvisionedProductEngineWorkflowResultOutput =
      $servicecatalog->NotifyUpdateProvisionedProductEngineWorkflowResult(
      IdempotencyToken => 'MyIdempotencyToken',
      RecordId         => 'MyId',
      Status           => 'SUCCEEDED',
      WorkflowToken    => 'MyEngineWorkflowToken',
      FailureReason    => 'MyEngineWorkflowFailureReason',    # OPTIONAL
      Outputs          => [
        {
          Description => 'MyDescription',    # OPTIONAL
          OutputKey   => 'MyOutputKey',      # OPTIONAL
          OutputValue => 'MyOutputValue',    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicecatalog/NotifyUpdateProvisionedProductEngineWorkflowResult>

=head1 ATTRIBUTES


=head2 FailureReason => Str

The reason why the update engine execution failed.



=head2 B<REQUIRED> IdempotencyToken => Str

The idempotency token that identifies the update engine execution.



=head2 Outputs => ArrayRef[L<Paws::ServiceCatalog::RecordOutput>]

The output of the update engine execution.



=head2 B<REQUIRED> RecordId => Str

The identifier of the record.



=head2 B<REQUIRED> Status => Str

The status of the update engine execution.

Valid values are: C<"SUCCEEDED">, C<"FAILED">

=head2 B<REQUIRED> WorkflowToken => Str

The encrypted contents of the update engine execution payload that
Service Catalog sends after the Terraform product update workflow
starts.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method NotifyUpdateProvisionedProductEngineWorkflowResult in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

