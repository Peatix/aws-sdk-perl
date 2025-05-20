
package Paws::OAM::CreateSinkOutput;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::OAM::TagMapOutput');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OAM::CreateSinkOutput

=head1 ATTRIBUTES


=head2 Arn => Str

The ARN of the sink that is newly created.


=head2 Id => Str

The random ID string that Amazon Web Services generated as part of the
sink ARN.


=head2 Name => Str

The name of the sink.


=head2 Tags => L<Paws::OAM::TagMapOutput>

The tags assigned to the sink.


=head2 _request_id => Str


=cut

