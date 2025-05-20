
package Paws::ConnectCases::GetLayoutResponse;
  use Moose;
  has Content => (is => 'ro', isa => 'Paws::ConnectCases::LayoutContent', traits => ['NameInRequest'], request_name => 'content', required => 1);
  has CreatedTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdTime');
  has Deleted => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'deleted');
  has LastModifiedTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastModifiedTime');
  has LayoutArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'layoutArn', required => 1);
  has LayoutId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'layoutId', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::ConnectCases::Tags', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCases::GetLayoutResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Content => L<Paws::ConnectCases::LayoutContent>

Information about which fields will be present in the layout, the order
of the fields, and read-only attribute of the field.


=head2 CreatedTime => Str

Timestamp at which the resource was created.


=head2 Deleted => Bool

Denotes whether or not the resource has been deleted.


=head2 LastModifiedTime => Str

Timestamp at which the resource was created or last modified.


=head2 B<REQUIRED> LayoutArn => Str

The Amazon Resource Name (ARN) of the newly created layout.


=head2 B<REQUIRED> LayoutId => Str

The unique identifier of the layout.


=head2 B<REQUIRED> Name => Str

The name of the layout. It must be unique.


=head2 Tags => L<Paws::ConnectCases::Tags>

A map of of key-value pairs that represent tags on a resource. Tags are
used to organize, track, or control access for this resource.


=head2 _request_id => Str


=cut

