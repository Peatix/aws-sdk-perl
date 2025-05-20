
package Paws::QApps::ListCategoriesOutput;
  use Moose;
  has Categories => (is => 'ro', isa => 'ArrayRef[Paws::QApps::Category]', traits => ['NameInRequest'], request_name => 'categories');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QApps::ListCategoriesOutput

=head1 ATTRIBUTES


=head2 Categories => ArrayRef[L<Paws::QApps::Category>]

The categories of a Amazon Q Business application environment instance.


=head2 _request_id => Str


=cut

