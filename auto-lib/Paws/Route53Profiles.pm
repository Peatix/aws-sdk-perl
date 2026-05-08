package Paws::Route53Profiles;
  use Moose;
  sub service { 'route53profiles' }
  sub signing_name { 'route53profiles' }
  sub version { '2018-05-10' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub AssociateProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Profiles::AssociateProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateResourceToProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Profiles::AssociateResourceToProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Profiles::CreateProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Profiles::DeleteProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Profiles::DisassociateProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateResourceFromProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Profiles::DisassociateResourceFromProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Profiles::GetProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetProfileAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Profiles::GetProfileAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetProfileResourceAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Profiles::GetProfileResourceAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListProfileAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Profiles::ListProfileAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListProfileResourceAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Profiles::ListProfileResourceAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListProfiles {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Profiles::ListProfiles', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Profiles::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Profiles::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Profiles::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateProfileResourceAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Profiles::UpdateProfileResourceAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllProfileAssociations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListProfileAssociations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListProfileAssociations(@_, NextToken => $next_result->NextToken);
        push @{ $result->ProfileAssociations }, @{ $next_result->ProfileAssociations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ProfileAssociations') foreach (@{ $result->ProfileAssociations });
        $result = $self->ListProfileAssociations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ProfileAssociations') foreach (@{ $result->ProfileAssociations });
    }

    return undef
  }
  sub ListAllProfileResourceAssociations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListProfileResourceAssociations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListProfileResourceAssociations(@_, NextToken => $next_result->NextToken);
        push @{ $result->ProfileResourceAssociations }, @{ $next_result->ProfileResourceAssociations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ProfileResourceAssociations') foreach (@{ $result->ProfileResourceAssociations });
        $result = $self->ListProfileResourceAssociations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ProfileResourceAssociations') foreach (@{ $result->ProfileResourceAssociations });
    }

    return undef
  }
  sub ListAllProfiles {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListProfiles(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListProfiles(@_, NextToken => $next_result->NextToken);
        push @{ $result->ProfileSummaries }, @{ $next_result->ProfileSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ProfileSummaries') foreach (@{ $result->ProfileSummaries });
        $result = $self->ListProfiles(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ProfileSummaries') foreach (@{ $result->ProfileSummaries });
    }

    return undef
  }


  sub operations { qw/AssociateProfile AssociateResourceToProfile CreateProfile DeleteProfile DisassociateProfile DisassociateResourceFromProfile GetProfile GetProfileAssociation GetProfileResourceAssociation ListProfileAssociations ListProfileResourceAssociations ListProfiles ListTagsForResource TagResource UntagResource UpdateProfileResourceAssociation / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Profiles - Perl Interface to AWS Route 53 Profiles

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Route53Profiles');
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

With Amazon Route 53 Profiles you can share Route 53 configurations
with VPCs and AWS accounts

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 AssociateProfile

=over

=item Name => Str

=item ProfileId => Str

=item ResourceId => Str

=item [Tags => ArrayRef[L<Paws::Route53Profiles::Tag>]]


=back

Each argument is described in detail in: L<Paws::Route53Profiles::AssociateProfile>

Returns: a L<Paws::Route53Profiles::AssociateProfileResponse> instance

Associates a Route 53 Profiles profile with a VPC. A VPC can have only
one Profile associated with it, but a Profile can be associated with
1000 of VPCs (and you can request a higher quota). For more
information, see
https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DNSLimitations.html#limits-api-entities
(https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DNSLimitations.html#limits-api-entities).


=head2 AssociateResourceToProfile

=over

=item Name => Str

=item ProfileId => Str

=item ResourceArn => Str

=item [ResourceProperties => Str]


=back

Each argument is described in detail in: L<Paws::Route53Profiles::AssociateResourceToProfile>

Returns: a L<Paws::Route53Profiles::AssociateResourceToProfileResponse> instance

Associates a DNS reource configuration to a Route 53 Profile.


=head2 CreateProfile

=over

=item ClientToken => Str

=item Name => Str

=item [Tags => ArrayRef[L<Paws::Route53Profiles::Tag>]]


=back

Each argument is described in detail in: L<Paws::Route53Profiles::CreateProfile>

Returns: a L<Paws::Route53Profiles::CreateProfileResponse> instance

Creates an empty Route 53 Profile.


=head2 DeleteProfile

=over

=item ProfileId => Str


=back

Each argument is described in detail in: L<Paws::Route53Profiles::DeleteProfile>

Returns: a L<Paws::Route53Profiles::DeleteProfileResponse> instance

Deletes the specified Route 53 Profile. Before you can delete a
profile, you must first disassociate it from all VPCs.


=head2 DisassociateProfile

=over

=item ProfileId => Str

=item ResourceId => Str


=back

Each argument is described in detail in: L<Paws::Route53Profiles::DisassociateProfile>

Returns: a L<Paws::Route53Profiles::DisassociateProfileResponse> instance

Dissociates a specified Route 53 Profile from the specified VPC.


=head2 DisassociateResourceFromProfile

=over

=item ProfileId => Str

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::Route53Profiles::DisassociateResourceFromProfile>

Returns: a L<Paws::Route53Profiles::DisassociateResourceFromProfileResponse> instance

Dissoaciated a specified resource, from the Route 53 Profile.


=head2 GetProfile

=over

=item ProfileId => Str


=back

Each argument is described in detail in: L<Paws::Route53Profiles::GetProfile>

Returns: a L<Paws::Route53Profiles::GetProfileResponse> instance

Returns information about a specified Route 53 Profile, such as whether
whether the Profile is shared, and the current status of the Profile.


=head2 GetProfileAssociation

=over

=item ProfileAssociationId => Str


=back

Each argument is described in detail in: L<Paws::Route53Profiles::GetProfileAssociation>

Returns: a L<Paws::Route53Profiles::GetProfileAssociationResponse> instance

Retrieves a Route 53 Profile association for a VPC. A VPC can have only
one Profile association, but a Profile can be associated with up to
5000 VPCs.


=head2 GetProfileResourceAssociation

=over

=item ProfileResourceAssociationId => Str


=back

Each argument is described in detail in: L<Paws::Route53Profiles::GetProfileResourceAssociation>

Returns: a L<Paws::Route53Profiles::GetProfileResourceAssociationResponse> instance

Returns information about a specified Route 53 Profile resource
association.


=head2 ListProfileAssociations

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ProfileId => Str]

=item [ResourceId => Str]


=back

Each argument is described in detail in: L<Paws::Route53Profiles::ListProfileAssociations>

Returns: a L<Paws::Route53Profiles::ListProfileAssociationsResponse> instance

Lists all the VPCs that the specified Route 53 Profile is associated
with.


=head2 ListProfileResourceAssociations

=over

=item ProfileId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ResourceType => Str]


=back

Each argument is described in detail in: L<Paws::Route53Profiles::ListProfileResourceAssociations>

Returns: a L<Paws::Route53Profiles::ListProfileResourceAssociationsResponse> instance

Lists all the resource associations for the specified Route 53 Profile.


=head2 ListProfiles

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Route53Profiles::ListProfiles>

Returns: a L<Paws::Route53Profiles::ListProfilesResponse> instance

Lists all the Route 53 Profiles associated with your Amazon Web
Services account.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::Route53Profiles::ListTagsForResource>

Returns: a L<Paws::Route53Profiles::ListTagsForResourceResponse> instance

Lists the tags that you associated with the specified resource.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::Route53Profiles::TagMap>


=back

Each argument is described in detail in: L<Paws::Route53Profiles::TagResource>

Returns: a L<Paws::Route53Profiles::TagResourceResponse> instance

Adds one or more tags to a specified resource.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Route53Profiles::UntagResource>

Returns: a L<Paws::Route53Profiles::UntagResourceResponse> instance

Removes one or more tags from a specified resource.


=head2 UpdateProfileResourceAssociation

=over

=item ProfileResourceAssociationId => Str

=item [Name => Str]

=item [ResourceProperties => Str]


=back

Each argument is described in detail in: L<Paws::Route53Profiles::UpdateProfileResourceAssociation>

Returns: a L<Paws::Route53Profiles::UpdateProfileResourceAssociationResponse> instance

Updates the specified Route 53 Profile resourse association.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllProfileAssociations(sub { },[MaxResults => Int, NextToken => Str, ProfileId => Str, ResourceId => Str])

=head2 ListAllProfileAssociations([MaxResults => Int, NextToken => Str, ProfileId => Str, ResourceId => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ProfileAssociations, passing the object as the first parameter, and the string 'ProfileAssociations' as the second parameter 

If not, it will return a a L<Paws::Route53Profiles::ListProfileAssociationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllProfileResourceAssociations(sub { },ProfileId => Str, [MaxResults => Int, NextToken => Str, ResourceType => Str])

=head2 ListAllProfileResourceAssociations(ProfileId => Str, [MaxResults => Int, NextToken => Str, ResourceType => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ProfileResourceAssociations, passing the object as the first parameter, and the string 'ProfileResourceAssociations' as the second parameter 

If not, it will return a a L<Paws::Route53Profiles::ListProfileResourceAssociationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllProfiles(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllProfiles([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ProfileSummaries, passing the object as the first parameter, and the string 'ProfileSummaries' as the second parameter 

If not, it will return a a L<Paws::Route53Profiles::ListProfilesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

