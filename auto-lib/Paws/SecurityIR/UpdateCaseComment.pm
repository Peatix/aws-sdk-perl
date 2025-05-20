
package Paws::SecurityIR::UpdateCaseComment;
  use Moose;
  has Body => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'body', required => 1);
  has CaseId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'caseId', required => 1);
  has CommentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'commentId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateCaseComment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/cases/{caseId}/update-case-comment/{commentId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityIR::UpdateCaseCommentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityIR::UpdateCaseComment - Arguments for method UpdateCaseComment on L<Paws::SecurityIR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateCaseComment on the
L<Security Incident Response|Paws::SecurityIR> service. Use the attributes of this class
as arguments to method UpdateCaseComment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateCaseComment.

=head1 SYNOPSIS

    my $security-ir = Paws->service('SecurityIR');
    my $UpdateCaseCommentResponse = $security -ir->UpdateCaseComment(
      Body      => 'MyCommentBody',
      CaseId    => 'MyCaseId',
      CommentId => 'MyCommentId',

    );

    # Results:
    my $Body      = $UpdateCaseCommentResponse->Body;
    my $CommentId = $UpdateCaseCommentResponse->CommentId;

    # Returns a L<Paws::SecurityIR::UpdateCaseCommentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/security-ir/UpdateCaseComment>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Body => Str

Required element for UpdateCaseComment to identify the content for the
comment to be updated.



=head2 B<REQUIRED> CaseId => Str

Required element for UpdateCaseComment to identify the case ID
containing the comment to be updated.



=head2 B<REQUIRED> CommentId => Str

Required element for UpdateCaseComment to identify the case ID to be
updated.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateCaseComment in L<Paws::SecurityIR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

