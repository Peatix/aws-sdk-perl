
package Paws::ConnectCases::CreateLayoutResponse;
  use Moose;
  has LayoutArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'layoutArn', required => 1);
  has LayoutId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'layoutId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCases::CreateLayoutResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> LayoutArn => Str

The Amazon Resource Name (ARN) of the newly created layout.


=head2 B<REQUIRED> LayoutId => Str

The unique identifier of the layout.


=head2 _request_id => Str


=cut

