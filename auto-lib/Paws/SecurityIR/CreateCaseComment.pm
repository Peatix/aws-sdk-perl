
package Paws::SecurityIR::CreateCaseComment;
  use Moose;
  has Body => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'body', required => 1);
  has CaseId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'caseId', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCaseComment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/cases/{caseId}/create-comment');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityIR::CreateCaseCommentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityIR::CreateCaseComment - Arguments for method CreateCaseComment on L<Paws::SecurityIR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCaseComment on the
L<Security Incident Response|Paws::SecurityIR> service. Use the attributes of this class
as arguments to method CreateCaseComment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCaseComment.

=head1 SYNOPSIS

    my $security-ir = Paws->service('SecurityIR');
    my $CreateCaseCommentResponse = $security -ir->CreateCaseComment(
      Body        => 'MyCommentBody',
      CaseId      => 'MyCaseId',
      ClientToken => 'MyCreateCaseCommentRequestClientTokenString',   # OPTIONAL
    );

    # Results:
    my $CommentId = $CreateCaseCommentResponse->CommentId;

    # Returns a L<Paws::SecurityIR::CreateCaseCommentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/security-ir/CreateCaseComment>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Body => Str

Required element used in combination with CreateCaseComment to add
content for the new comment.



=head2 B<REQUIRED> CaseId => Str

Required element used in combination with CreateCaseComment to specify
a case ID.



=head2 ClientToken => Str

An optional element used in combination with CreateCaseComment.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCaseComment in L<Paws::SecurityIR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

