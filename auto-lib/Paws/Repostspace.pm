package Paws::Repostspace;
  use Moose;
  sub service { 'repostspace' }
  sub signing_name { 'repostspace' }
  sub version { '2022-05-13' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub BatchAddRole {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Repostspace::BatchAddRole', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchRemoveRole {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Repostspace::BatchRemoveRole', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSpace {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Repostspace::CreateSpace', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSpace {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Repostspace::DeleteSpace', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeregisterAdmin {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Repostspace::DeregisterAdmin', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSpace {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Repostspace::GetSpace', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSpaces {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Repostspace::ListSpaces', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Repostspace::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterAdmin {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Repostspace::RegisterAdmin', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SendInvites {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Repostspace::SendInvites', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Repostspace::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Repostspace::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSpace {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Repostspace::UpdateSpace', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllSpaces {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSpaces(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListSpaces(@_, nextToken => $next_result->nextToken);
        push @{ $result->spaces }, @{ $next_result->spaces };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'spaces') foreach (@{ $result->spaces });
        $result = $self->ListSpaces(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'spaces') foreach (@{ $result->spaces });
    }

    return undef
  }


  sub operations { qw/BatchAddRole BatchRemoveRole CreateSpace DeleteSpace DeregisterAdmin GetSpace ListSpaces ListTagsForResource RegisterAdmin SendInvites TagResource UntagResource UpdateSpace / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Repostspace - Perl Interface to AWS AWS re:Post Private

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Repostspace');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

AWS re:Post Private is a private version of AWS re:Post for enterprises
with Enterprise Support or Enterprise On-Ramp Support plans. It
provides access to knowledge and experts to accelerate cloud adoption
and increase developer productivity. With your organization-specific
private re:Post, you can build an organization-specific developer
community that drives efficiencies at scale and provides access to
valuable knowledge resources. Additionally, re:Post Private centralizes
trusted AWS technical content and offers private discussion forums to
improve how your teams collaborate internally and with AWS to remove
technical obstacles, accelerate innovation, and scale more efficiently
in the cloud.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/repostspace-2022-05-13>


=head1 METHODS

=head2 BatchAddRole

=over

=item AccessorIds => ArrayRef[Str|Undef]

=item Role => Str

=item SpaceId => Str


=back

Each argument is described in detail in: L<Paws::Repostspace::BatchAddRole>

Returns: a L<Paws::Repostspace::BatchAddRoleOutput> instance

Add role to multiple users or groups in a private re:Post.


=head2 BatchRemoveRole

=over

=item AccessorIds => ArrayRef[Str|Undef]

=item Role => Str

=item SpaceId => Str


=back

Each argument is described in detail in: L<Paws::Repostspace::BatchRemoveRole>

Returns: a L<Paws::Repostspace::BatchRemoveRoleOutput> instance

Remove role from multiple users or groups in a private re:Post.


=head2 CreateSpace

=over

=item Name => Str

=item Subdomain => Str

=item Tier => Str

=item [Description => Str]

=item [RoleArn => Str]

=item [Tags => L<Paws::Repostspace::Tags>]

=item [UserKMSKey => Str]


=back

Each argument is described in detail in: L<Paws::Repostspace::CreateSpace>

Returns: a L<Paws::Repostspace::CreateSpaceOutput> instance

Creates an AWS re:Post Private private re:Post.


=head2 DeleteSpace

=over

=item SpaceId => Str


=back

Each argument is described in detail in: L<Paws::Repostspace::DeleteSpace>

Returns: nothing

Deletes an AWS re:Post Private private re:Post.


=head2 DeregisterAdmin

=over

=item AdminId => Str

=item SpaceId => Str


=back

Each argument is described in detail in: L<Paws::Repostspace::DeregisterAdmin>

Returns: nothing

Removes the user or group from the list of administrators of the
private re:Post.


=head2 GetSpace

=over

=item SpaceId => Str


=back

Each argument is described in detail in: L<Paws::Repostspace::GetSpace>

Returns: a L<Paws::Repostspace::GetSpaceOutput> instance

Displays information about the AWS re:Post Private private re:Post.


=head2 ListSpaces

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Repostspace::ListSpaces>

Returns: a L<Paws::Repostspace::ListSpacesOutput> instance

Returns a list of AWS re:Post Private private re:Posts in the account
with some information about each private re:Post.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::Repostspace::ListTagsForResource>

Returns: a L<Paws::Repostspace::ListTagsForResourceResponse> instance

Returns the tags that are associated with the AWS re:Post Private
resource specified by the resourceArn. The only resource that can be
tagged is a private re:Post.


=head2 RegisterAdmin

=over

=item AdminId => Str

=item SpaceId => Str


=back

Each argument is described in detail in: L<Paws::Repostspace::RegisterAdmin>

Returns: nothing

Adds a user or group to the list of administrators of the private
re:Post.


=head2 SendInvites

=over

=item AccessorIds => ArrayRef[Str|Undef]

=item Body => Str

=item SpaceId => Str

=item Title => Str


=back

Each argument is described in detail in: L<Paws::Repostspace::SendInvites>

Returns: nothing

Sends an invitation email to selected users and groups.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::Repostspace::Tags>


=back

Each argument is described in detail in: L<Paws::Repostspace::TagResource>

Returns: a L<Paws::Repostspace::TagResourceResponse> instance

Associates tags with an AWS re:Post Private resource. Currently, the
only resource that can be tagged is the private re:Post. If you specify
a new tag key for the resource, the tag is appended to the list of tags
that are associated with the resource. If you specify a tag key
thatE<rsquo>s already associated with the resource, the new tag value
that you specify replaces the previous value for that tag.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Repostspace::UntagResource>

Returns: a L<Paws::Repostspace::UntagResourceResponse> instance

Removes the association of the tag with the AWS re:Post Private
resource.


=head2 UpdateSpace

=over

=item SpaceId => Str

=item [Description => Str]

=item [RoleArn => Str]

=item [Tier => Str]


=back

Each argument is described in detail in: L<Paws::Repostspace::UpdateSpace>

Returns: nothing

Modifies an existing AWS re:Post Private private re:Post.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllSpaces(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllSpaces([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - spaces, passing the object as the first parameter, and the string 'spaces' as the second parameter 

If not, it will return a a L<Paws::Repostspace::ListSpacesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

