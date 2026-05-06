package Paws::ManagedBlockchain;
  use Moose;
  sub service { 'managedblockchain' }
  sub signing_name { 'managedblockchain' }
  sub version { '2018-09-24' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateAccessor {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ManagedBlockchain::CreateAccessor', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateMember {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ManagedBlockchain::CreateMember', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateNetwork {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ManagedBlockchain::CreateNetwork', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateNode {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ManagedBlockchain::CreateNode', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateProposal {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ManagedBlockchain::CreateProposal', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAccessor {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ManagedBlockchain::DeleteAccessor', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteMember {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ManagedBlockchain::DeleteMember', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteNode {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ManagedBlockchain::DeleteNode', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAccessor {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ManagedBlockchain::GetAccessor', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMember {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ManagedBlockchain::GetMember', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetNetwork {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ManagedBlockchain::GetNetwork', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetNode {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ManagedBlockchain::GetNode', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetProposal {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ManagedBlockchain::GetProposal', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAccessors {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ManagedBlockchain::ListAccessors', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListInvitations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ManagedBlockchain::ListInvitations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMembers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ManagedBlockchain::ListMembers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListNetworks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ManagedBlockchain::ListNetworks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListNodes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ManagedBlockchain::ListNodes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListProposals {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ManagedBlockchain::ListProposals', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListProposalVotes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ManagedBlockchain::ListProposalVotes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ManagedBlockchain::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RejectInvitation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ManagedBlockchain::RejectInvitation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ManagedBlockchain::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ManagedBlockchain::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateMember {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ManagedBlockchain::UpdateMember', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateNode {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ManagedBlockchain::UpdateNode', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub VoteOnProposal {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ManagedBlockchain::VoteOnProposal', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllAccessors {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAccessors(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListAccessors(@_, NextToken => $next_result->NextToken);
        push @{ $result->Accessors }, @{ $next_result->Accessors };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Accessors') foreach (@{ $result->Accessors });
        $result = $self->ListAccessors(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Accessors') foreach (@{ $result->Accessors });
    }

    return undef
  }


  sub operations { qw/CreateAccessor CreateMember CreateNetwork CreateNode CreateProposal DeleteAccessor DeleteMember DeleteNode GetAccessor GetMember GetNetwork GetNode GetProposal ListAccessors ListInvitations ListMembers ListNetworks ListNodes ListProposals ListProposalVotes ListTagsForResource RejectInvitation TagResource UntagResource UpdateMember UpdateNode VoteOnProposal / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ManagedBlockchain - Perl Interface to AWS Amazon Managed Blockchain

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('ManagedBlockchain');
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

Amazon Managed Blockchain is a fully managed service for creating and
managing blockchain networks using open-source frameworks. Blockchain
allows you to build applications where multiple parties can securely
and transparently run transactions and share data without the need for
a trusted, central authority.

Managed Blockchain supports the Hyperledger Fabric and Ethereum
open-source frameworks. Because of fundamental differences between the
frameworks, some API actions or data types may only apply in the
context of one framework and not the other. For example, actions
related to Hyperledger Fabric network members such as C<CreateMember>
and C<DeleteMember> don't apply to Ethereum.

The description for each action indicates the framework or frameworks
to which it applies. Data types and properties that apply only in the
context of a particular framework are similarly indicated.

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 CreateAccessor

=over

=item AccessorType => Str

=item ClientRequestToken => Str

=item [NetworkType => Str]

=item [Tags => L<Paws::ManagedBlockchain::InputTagMap>]


=back

Each argument is described in detail in: L<Paws::ManagedBlockchain::CreateAccessor>

Returns: a L<Paws::ManagedBlockchain::CreateAccessorOutput> instance

Creates a new accessor for use with Amazon Managed Blockchain service
that supports token based access. The accessor contains information
required for token based access.


=head2 CreateMember

=over

=item ClientRequestToken => Str

=item InvitationId => Str

=item MemberConfiguration => L<Paws::ManagedBlockchain::MemberConfiguration>

=item NetworkId => Str


=back

Each argument is described in detail in: L<Paws::ManagedBlockchain::CreateMember>

Returns: a L<Paws::ManagedBlockchain::CreateMemberOutput> instance

Creates a member within a Managed Blockchain network.

Applies only to Hyperledger Fabric.


=head2 CreateNetwork

=over

=item ClientRequestToken => Str

=item Framework => Str

=item FrameworkVersion => Str

=item MemberConfiguration => L<Paws::ManagedBlockchain::MemberConfiguration>

=item Name => Str

=item VotingPolicy => L<Paws::ManagedBlockchain::VotingPolicy>

=item [Description => Str]

=item [FrameworkConfiguration => L<Paws::ManagedBlockchain::NetworkFrameworkConfiguration>]

=item [Tags => L<Paws::ManagedBlockchain::InputTagMap>]


=back

Each argument is described in detail in: L<Paws::ManagedBlockchain::CreateNetwork>

Returns: a L<Paws::ManagedBlockchain::CreateNetworkOutput> instance

Creates a new blockchain network using Amazon Managed Blockchain.

Applies only to Hyperledger Fabric.


=head2 CreateNode

=over

=item ClientRequestToken => Str

=item NetworkId => Str

=item NodeConfiguration => L<Paws::ManagedBlockchain::NodeConfiguration>

=item [MemberId => Str]

=item [Tags => L<Paws::ManagedBlockchain::InputTagMap>]


=back

Each argument is described in detail in: L<Paws::ManagedBlockchain::CreateNode>

Returns: a L<Paws::ManagedBlockchain::CreateNodeOutput> instance

Creates a node on the specified blockchain network.

Applies to Hyperledger Fabric and Ethereum.


=head2 CreateProposal

=over

=item Actions => L<Paws::ManagedBlockchain::ProposalActions>

=item ClientRequestToken => Str

=item MemberId => Str

=item NetworkId => Str

=item [Description => Str]

=item [Tags => L<Paws::ManagedBlockchain::InputTagMap>]


=back

Each argument is described in detail in: L<Paws::ManagedBlockchain::CreateProposal>

Returns: a L<Paws::ManagedBlockchain::CreateProposalOutput> instance

Creates a proposal for a change to the network that other members of
the network can vote on, for example, a proposal to add a new member to
the network. Any member can create a proposal.

Applies only to Hyperledger Fabric.


=head2 DeleteAccessor

=over

=item AccessorId => Str


=back

Each argument is described in detail in: L<Paws::ManagedBlockchain::DeleteAccessor>

Returns: a L<Paws::ManagedBlockchain::DeleteAccessorOutput> instance

Deletes an accessor that your Amazon Web Services account owns. An
accessor object is a container that has the information required for
token based access to your Ethereum nodes including, the
C<BILLING_TOKEN>. After an accessor is deleted, the status of the
accessor changes from C<AVAILABLE> to C<PENDING_DELETION>. An accessor
in the C<PENDING_DELETION> state canE<rsquo>t be used for new WebSocket
requests or HTTP requests. However, WebSocket connections that were
initiated while the accessor was in the C<AVAILABLE> state remain open
until they expire (up to 2 hours).


=head2 DeleteMember

=over

=item MemberId => Str

=item NetworkId => Str


=back

Each argument is described in detail in: L<Paws::ManagedBlockchain::DeleteMember>

Returns: a L<Paws::ManagedBlockchain::DeleteMemberOutput> instance

Deletes a member. Deleting a member removes the member and all
associated resources from the network. C<DeleteMember> can only be
called for a specified C<MemberId> if the principal performing the
action is associated with the Amazon Web Services account that owns the
member. In all other cases, the C<DeleteMember> action is carried out
as the result of an approved proposal to remove a member. If
C<MemberId> is the last member in a network specified by the last
Amazon Web Services account, the network is deleted also.

Applies only to Hyperledger Fabric.


=head2 DeleteNode

=over

=item NetworkId => Str

=item NodeId => Str

=item [MemberId => Str]


=back

Each argument is described in detail in: L<Paws::ManagedBlockchain::DeleteNode>

Returns: a L<Paws::ManagedBlockchain::DeleteNodeOutput> instance

Deletes a node that your Amazon Web Services account owns. All data on
the node is lost and cannot be recovered.

Applies to Hyperledger Fabric and Ethereum.


=head2 GetAccessor

=over

=item AccessorId => Str


=back

Each argument is described in detail in: L<Paws::ManagedBlockchain::GetAccessor>

Returns: a L<Paws::ManagedBlockchain::GetAccessorOutput> instance

Returns detailed information about an accessor. An accessor object is a
container that has the information required for token based access to
your Ethereum nodes.


=head2 GetMember

=over

=item MemberId => Str

=item NetworkId => Str


=back

Each argument is described in detail in: L<Paws::ManagedBlockchain::GetMember>

Returns: a L<Paws::ManagedBlockchain::GetMemberOutput> instance

Returns detailed information about a member.

Applies only to Hyperledger Fabric.


=head2 GetNetwork

=over

=item NetworkId => Str


=back

Each argument is described in detail in: L<Paws::ManagedBlockchain::GetNetwork>

Returns: a L<Paws::ManagedBlockchain::GetNetworkOutput> instance

Returns detailed information about a network.

Applies to Hyperledger Fabric and Ethereum.


=head2 GetNode

=over

=item NetworkId => Str

=item NodeId => Str

=item [MemberId => Str]


=back

Each argument is described in detail in: L<Paws::ManagedBlockchain::GetNode>

Returns: a L<Paws::ManagedBlockchain::GetNodeOutput> instance

Returns detailed information about a node.

Applies to Hyperledger Fabric and Ethereum.


=head2 GetProposal

=over

=item NetworkId => Str

=item ProposalId => Str


=back

Each argument is described in detail in: L<Paws::ManagedBlockchain::GetProposal>

Returns: a L<Paws::ManagedBlockchain::GetProposalOutput> instance

Returns detailed information about a proposal.

Applies only to Hyperledger Fabric.


=head2 ListAccessors

=over

=item [MaxResults => Int]

=item [NetworkType => Str]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ManagedBlockchain::ListAccessors>

Returns: a L<Paws::ManagedBlockchain::ListAccessorsOutput> instance

Returns a list of the accessors and their properties. Accessor objects
are containers that have the information required for token based
access to your Ethereum nodes.


=head2 ListInvitations

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ManagedBlockchain::ListInvitations>

Returns: a L<Paws::ManagedBlockchain::ListInvitationsOutput> instance

Returns a list of all invitations for the current Amazon Web Services
account.

Applies only to Hyperledger Fabric.


=head2 ListMembers

=over

=item NetworkId => Str

=item [IsOwned => Bool]

=item [MaxResults => Int]

=item [Name => Str]

=item [NextToken => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::ManagedBlockchain::ListMembers>

Returns: a L<Paws::ManagedBlockchain::ListMembersOutput> instance

Returns a list of the members in a network and properties of their
configurations.

Applies only to Hyperledger Fabric.


=head2 ListNetworks

=over

=item [Framework => Str]

=item [MaxResults => Int]

=item [Name => Str]

=item [NextToken => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::ManagedBlockchain::ListNetworks>

Returns: a L<Paws::ManagedBlockchain::ListNetworksOutput> instance

Returns information about the networks in which the current Amazon Web
Services account participates.

Applies to Hyperledger Fabric and Ethereum.


=head2 ListNodes

=over

=item NetworkId => Str

=item [MaxResults => Int]

=item [MemberId => Str]

=item [NextToken => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::ManagedBlockchain::ListNodes>

Returns: a L<Paws::ManagedBlockchain::ListNodesOutput> instance

Returns information about the nodes within a network.

Applies to Hyperledger Fabric and Ethereum.


=head2 ListProposals

=over

=item NetworkId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ManagedBlockchain::ListProposals>

Returns: a L<Paws::ManagedBlockchain::ListProposalsOutput> instance

Returns a list of proposals for the network.

Applies only to Hyperledger Fabric.


=head2 ListProposalVotes

=over

=item NetworkId => Str

=item ProposalId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ManagedBlockchain::ListProposalVotes>

Returns: a L<Paws::ManagedBlockchain::ListProposalVotesOutput> instance

Returns the list of votes for a specified proposal, including the value
of each vote and the unique identifier of the member that cast the
vote.

Applies only to Hyperledger Fabric.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::ManagedBlockchain::ListTagsForResource>

Returns: a L<Paws::ManagedBlockchain::ListTagsForResourceResponse> instance

Returns a list of tags for the specified resource. Each tag consists of
a key and optional value.

For more information about tags, see Tagging Resources
(https://docs.aws.amazon.com/managed-blockchain/latest/ethereum-dev/tagging-resources.html)
in the I<Amazon Managed Blockchain Ethereum Developer Guide>, or
Tagging Resources
(https://docs.aws.amazon.com/managed-blockchain/latest/hyperledger-fabric-dev/tagging-resources.html)
in the I<Amazon Managed Blockchain Hyperledger Fabric Developer Guide>.


=head2 RejectInvitation

=over

=item InvitationId => Str


=back

Each argument is described in detail in: L<Paws::ManagedBlockchain::RejectInvitation>

Returns: a L<Paws::ManagedBlockchain::RejectInvitationOutput> instance

Rejects an invitation to join a network. This action can be called by a
principal in an Amazon Web Services account that has received an
invitation to create a member and join a network.

Applies only to Hyperledger Fabric.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::ManagedBlockchain::InputTagMap>


=back

Each argument is described in detail in: L<Paws::ManagedBlockchain::TagResource>

Returns: a L<Paws::ManagedBlockchain::TagResourceResponse> instance

Adds or overwrites the specified tags for the specified Amazon Managed
Blockchain resource. Each tag consists of a key and optional value.

When you specify a tag key that already exists, the tag value is
overwritten with the new value. Use C<UntagResource> to remove tag
keys.

A resource can have up to 50 tags. If you try to create more than 50
tags for a resource, your request fails and returns an error.

For more information about tags, see Tagging Resources
(https://docs.aws.amazon.com/managed-blockchain/latest/ethereum-dev/tagging-resources.html)
in the I<Amazon Managed Blockchain Ethereum Developer Guide>, or
Tagging Resources
(https://docs.aws.amazon.com/managed-blockchain/latest/hyperledger-fabric-dev/tagging-resources.html)
in the I<Amazon Managed Blockchain Hyperledger Fabric Developer Guide>.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::ManagedBlockchain::UntagResource>

Returns: a L<Paws::ManagedBlockchain::UntagResourceResponse> instance

Removes the specified tags from the Amazon Managed Blockchain resource.

For more information about tags, see Tagging Resources
(https://docs.aws.amazon.com/managed-blockchain/latest/ethereum-dev/tagging-resources.html)
in the I<Amazon Managed Blockchain Ethereum Developer Guide>, or
Tagging Resources
(https://docs.aws.amazon.com/managed-blockchain/latest/hyperledger-fabric-dev/tagging-resources.html)
in the I<Amazon Managed Blockchain Hyperledger Fabric Developer Guide>.


=head2 UpdateMember

=over

=item MemberId => Str

=item NetworkId => Str

=item [LogPublishingConfiguration => L<Paws::ManagedBlockchain::MemberLogPublishingConfiguration>]


=back

Each argument is described in detail in: L<Paws::ManagedBlockchain::UpdateMember>

Returns: a L<Paws::ManagedBlockchain::UpdateMemberOutput> instance

Updates a member configuration with new parameters.

Applies only to Hyperledger Fabric.


=head2 UpdateNode

=over

=item NetworkId => Str

=item NodeId => Str

=item [LogPublishingConfiguration => L<Paws::ManagedBlockchain::NodeLogPublishingConfiguration>]

=item [MemberId => Str]


=back

Each argument is described in detail in: L<Paws::ManagedBlockchain::UpdateNode>

Returns: a L<Paws::ManagedBlockchain::UpdateNodeOutput> instance

Updates a node configuration with new parameters.

Applies only to Hyperledger Fabric.


=head2 VoteOnProposal

=over

=item NetworkId => Str

=item ProposalId => Str

=item Vote => Str

=item VoterMemberId => Str


=back

Each argument is described in detail in: L<Paws::ManagedBlockchain::VoteOnProposal>

Returns: a L<Paws::ManagedBlockchain::VoteOnProposalOutput> instance

Casts a vote for a specified C<ProposalId> on behalf of a member. The
member to vote as, specified by C<VoterMemberId>, must be in the same
Amazon Web Services account as the principal that calls the action.

Applies only to Hyperledger Fabric.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllAccessors(sub { },[MaxResults => Int, NetworkType => Str, NextToken => Str])

=head2 ListAllAccessors([MaxResults => Int, NetworkType => Str, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Accessors, passing the object as the first parameter, and the string 'Accessors' as the second parameter 

If not, it will return a a L<Paws::ManagedBlockchain::ListAccessorsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

