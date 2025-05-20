
package Paws::QBusiness::GetRetrieverResponse;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'applicationId');
  has Configuration => (is => 'ro', isa => 'Paws::QBusiness::RetrieverConfiguration', traits => ['NameInRequest'], request_name => 'configuration');
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt');
  has DisplayName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'displayName');
  has RetrieverArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'retrieverArn');
  has RetrieverId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'retrieverId');
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type');
  has UpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatedAt');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::GetRetrieverResponse

=head1 ATTRIBUTES


=head2 ApplicationId => Str

The identifier of the Amazon Q Business application using the
retriever.


=head2 Configuration => L<Paws::QBusiness::RetrieverConfiguration>




=head2 CreatedAt => Str

The Unix timestamp when the retriever was created.


=head2 DisplayName => Str

The name of the retriever.


=head2 RetrieverArn => Str

The Amazon Resource Name (ARN) of the IAM role associated with the
retriever.


=head2 RetrieverId => Str

The identifier of the retriever.


=head2 RoleArn => Str

The Amazon Resource Name (ARN) of the role with the permission to
access the retriever and required resources.


=head2 Status => Str

The status of the retriever.

Valid values are: C<"CREATING">, C<"ACTIVE">, C<"FAILED">
=head2 Type => Str

The type of the retriever.

Valid values are: C<"NATIVE_INDEX">, C<"KENDRA_INDEX">
=head2 UpdatedAt => Str

The Unix timestamp when the retriever was last updated.


=head2 _request_id => Str


=cut

