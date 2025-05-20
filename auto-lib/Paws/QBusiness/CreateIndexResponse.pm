
package Paws::QBusiness::CreateIndexResponse;
  use Moose;
  has IndexArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'indexArn');
  has IndexId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'indexId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::CreateIndexResponse

=head1 ATTRIBUTES


=head2 IndexArn => Str

The Amazon Resource Name (ARN) of an Amazon Q Business index.


=head2 IndexId => Str

The identifier for the Amazon Q Business index.


=head2 _request_id => Str


=cut

