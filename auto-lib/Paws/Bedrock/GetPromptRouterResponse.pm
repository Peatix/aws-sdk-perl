
package Paws::Bedrock::GetPromptRouterResponse;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has FallbackModel => (is => 'ro', isa => 'Paws::Bedrock::PromptRouterTargetModel', traits => ['NameInRequest'], request_name => 'fallbackModel', required => 1);
  has Models => (is => 'ro', isa => 'ArrayRef[Paws::Bedrock::PromptRouterTargetModel]', traits => ['NameInRequest'], request_name => 'models', required => 1);
  has PromptRouterArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'promptRouterArn', required => 1);
  has PromptRouterName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'promptRouterName', required => 1);
  has RoutingCriteria => (is => 'ro', isa => 'Paws::Bedrock::RoutingCriteria', traits => ['NameInRequest'], request_name => 'routingCriteria', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type', required => 1);
  has UpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatedAt');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Bedrock::GetPromptRouterResponse

=head1 ATTRIBUTES


=head2 CreatedAt => Str

When the router was created.


=head2 Description => Str

The router's description.


=head2 B<REQUIRED> FallbackModel => L<Paws::Bedrock::PromptRouterTargetModel>

The router's fallback model.


=head2 B<REQUIRED> Models => ArrayRef[L<Paws::Bedrock::PromptRouterTargetModel>]

The router's models.


=head2 B<REQUIRED> PromptRouterArn => Str

The prompt router's ARN


=head2 B<REQUIRED> PromptRouterName => Str

The router's name.


=head2 B<REQUIRED> RoutingCriteria => L<Paws::Bedrock::RoutingCriteria>

The router's routing criteria.


=head2 B<REQUIRED> Status => Str

The router's status.

Valid values are: C<"AVAILABLE">
=head2 B<REQUIRED> Type => Str

The router's type.

Valid values are: C<"custom">, C<"default">
=head2 UpdatedAt => Str

When the router was updated.


=head2 _request_id => Str


=cut

