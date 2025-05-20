
package Paws::SSM::GetExecutionPreview;
  use Moose;
  has ExecutionPreviewId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetExecutionPreview');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::GetExecutionPreviewResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::GetExecutionPreview - Arguments for method GetExecutionPreview on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetExecutionPreview on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method GetExecutionPreview.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetExecutionPreview.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $GetExecutionPreviewResponse = $ssm->GetExecutionPreview(
      ExecutionPreviewId => 'MyExecutionPreviewId',

    );

    # Results:
    my $EndedAt            = $GetExecutionPreviewResponse->EndedAt;
    my $ExecutionPreview   = $GetExecutionPreviewResponse->ExecutionPreview;
    my $ExecutionPreviewId = $GetExecutionPreviewResponse->ExecutionPreviewId;
    my $Status             = $GetExecutionPreviewResponse->Status;
    my $StatusMessage      = $GetExecutionPreviewResponse->StatusMessage;

    # Returns a L<Paws::SSM::GetExecutionPreviewResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/GetExecutionPreview>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ExecutionPreviewId => Str

The ID of the existing execution preview.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetExecutionPreview in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

