package Paws::PartnerCentralSelling;
  use Moose;
  sub service { 'partnercentral-selling' }
  sub signing_name { 'partnercentral-selling' }
  sub version { '2022-07-26' }
  sub target_prefix { 'AWSPartnerCentralSelling' }
  sub json_version { "1.0" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub AcceptEngagementInvitation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PartnerCentralSelling::AcceptEngagementInvitation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssignOpportunity {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PartnerCentralSelling::AssignOpportunity', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateOpportunity {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PartnerCentralSelling::AssociateOpportunity', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateEngagement {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PartnerCentralSelling::CreateEngagement', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateEngagementInvitation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PartnerCentralSelling::CreateEngagementInvitation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateOpportunity {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PartnerCentralSelling::CreateOpportunity', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateResourceSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PartnerCentralSelling::CreateResourceSnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateResourceSnapshotJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PartnerCentralSelling::CreateResourceSnapshotJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteResourceSnapshotJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PartnerCentralSelling::DeleteResourceSnapshotJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateOpportunity {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PartnerCentralSelling::DisassociateOpportunity', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAwsOpportunitySummary {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PartnerCentralSelling::GetAwsOpportunitySummary', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEngagement {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PartnerCentralSelling::GetEngagement', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEngagementInvitation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PartnerCentralSelling::GetEngagementInvitation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetOpportunity {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PartnerCentralSelling::GetOpportunity', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetResourceSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PartnerCentralSelling::GetResourceSnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetResourceSnapshotJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PartnerCentralSelling::GetResourceSnapshotJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSellingSystemSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PartnerCentralSelling::GetSellingSystemSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEngagementByAcceptingInvitationTasks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PartnerCentralSelling::ListEngagementByAcceptingInvitationTasks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEngagementFromOpportunityTasks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PartnerCentralSelling::ListEngagementFromOpportunityTasks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEngagementInvitations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PartnerCentralSelling::ListEngagementInvitations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEngagementMembers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PartnerCentralSelling::ListEngagementMembers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEngagementResourceAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PartnerCentralSelling::ListEngagementResourceAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEngagements {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PartnerCentralSelling::ListEngagements', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListOpportunities {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PartnerCentralSelling::ListOpportunities', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListResourceSnapshotJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PartnerCentralSelling::ListResourceSnapshotJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListResourceSnapshots {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PartnerCentralSelling::ListResourceSnapshots', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSolutions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PartnerCentralSelling::ListSolutions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PartnerCentralSelling::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutSellingSystemSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PartnerCentralSelling::PutSellingSystemSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RejectEngagementInvitation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PartnerCentralSelling::RejectEngagementInvitation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartEngagementByAcceptingInvitationTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PartnerCentralSelling::StartEngagementByAcceptingInvitationTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartEngagementFromOpportunityTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PartnerCentralSelling::StartEngagementFromOpportunityTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartResourceSnapshotJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PartnerCentralSelling::StartResourceSnapshotJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopResourceSnapshotJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PartnerCentralSelling::StopResourceSnapshotJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SubmitOpportunity {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PartnerCentralSelling::SubmitOpportunity', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PartnerCentralSelling::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PartnerCentralSelling::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateOpportunity {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PartnerCentralSelling::UpdateOpportunity', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllEngagementByAcceptingInvitationTasks {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListEngagementByAcceptingInvitationTasks(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListEngagementByAcceptingInvitationTasks(@_, NextToken => $next_result->NextToken);
        push @{ $result->TaskSummaries }, @{ $next_result->TaskSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'TaskSummaries') foreach (@{ $result->TaskSummaries });
        $result = $self->ListEngagementByAcceptingInvitationTasks(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'TaskSummaries') foreach (@{ $result->TaskSummaries });
    }

    return undef
  }
  sub ListAllEngagementFromOpportunityTasks {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListEngagementFromOpportunityTasks(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListEngagementFromOpportunityTasks(@_, NextToken => $next_result->NextToken);
        push @{ $result->TaskSummaries }, @{ $next_result->TaskSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'TaskSummaries') foreach (@{ $result->TaskSummaries });
        $result = $self->ListEngagementFromOpportunityTasks(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'TaskSummaries') foreach (@{ $result->TaskSummaries });
    }

    return undef
  }
  sub ListAllEngagementInvitations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListEngagementInvitations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListEngagementInvitations(@_, NextToken => $next_result->NextToken);
        push @{ $result->EngagementInvitationSummaries }, @{ $next_result->EngagementInvitationSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'EngagementInvitationSummaries') foreach (@{ $result->EngagementInvitationSummaries });
        $result = $self->ListEngagementInvitations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'EngagementInvitationSummaries') foreach (@{ $result->EngagementInvitationSummaries });
    }

    return undef
  }
  sub ListAllEngagementMembers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListEngagementMembers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListEngagementMembers(@_, NextToken => $next_result->NextToken);
        push @{ $result->EngagementMemberList }, @{ $next_result->EngagementMemberList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'EngagementMemberList') foreach (@{ $result->EngagementMemberList });
        $result = $self->ListEngagementMembers(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'EngagementMemberList') foreach (@{ $result->EngagementMemberList });
    }

    return undef
  }
  sub ListAllEngagementResourceAssociations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListEngagementResourceAssociations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListEngagementResourceAssociations(@_, NextToken => $next_result->NextToken);
        push @{ $result->EngagementResourceAssociationSummaries }, @{ $next_result->EngagementResourceAssociationSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'EngagementResourceAssociationSummaries') foreach (@{ $result->EngagementResourceAssociationSummaries });
        $result = $self->ListEngagementResourceAssociations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'EngagementResourceAssociationSummaries') foreach (@{ $result->EngagementResourceAssociationSummaries });
    }

    return undef
  }
  sub ListAllEngagements {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListEngagements(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListEngagements(@_, NextToken => $next_result->NextToken);
        push @{ $result->EngagementSummaryList }, @{ $next_result->EngagementSummaryList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'EngagementSummaryList') foreach (@{ $result->EngagementSummaryList });
        $result = $self->ListEngagements(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'EngagementSummaryList') foreach (@{ $result->EngagementSummaryList });
    }

    return undef
  }
  sub ListAllOpportunities {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListOpportunities(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListOpportunities(@_, NextToken => $next_result->NextToken);
        push @{ $result->OpportunitySummaries }, @{ $next_result->OpportunitySummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'OpportunitySummaries') foreach (@{ $result->OpportunitySummaries });
        $result = $self->ListOpportunities(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'OpportunitySummaries') foreach (@{ $result->OpportunitySummaries });
    }

    return undef
  }
  sub ListAllResourceSnapshotJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListResourceSnapshotJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListResourceSnapshotJobs(@_, NextToken => $next_result->NextToken);
        push @{ $result->ResourceSnapshotJobSummaries }, @{ $next_result->ResourceSnapshotJobSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ResourceSnapshotJobSummaries') foreach (@{ $result->ResourceSnapshotJobSummaries });
        $result = $self->ListResourceSnapshotJobs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ResourceSnapshotJobSummaries') foreach (@{ $result->ResourceSnapshotJobSummaries });
    }

    return undef
  }
  sub ListAllResourceSnapshots {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListResourceSnapshots(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListResourceSnapshots(@_, NextToken => $next_result->NextToken);
        push @{ $result->ResourceSnapshotSummaries }, @{ $next_result->ResourceSnapshotSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ResourceSnapshotSummaries') foreach (@{ $result->ResourceSnapshotSummaries });
        $result = $self->ListResourceSnapshots(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ResourceSnapshotSummaries') foreach (@{ $result->ResourceSnapshotSummaries });
    }

    return undef
  }
  sub ListAllSolutions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSolutions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListSolutions(@_, NextToken => $next_result->NextToken);
        push @{ $result->SolutionSummaries }, @{ $next_result->SolutionSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'SolutionSummaries') foreach (@{ $result->SolutionSummaries });
        $result = $self->ListSolutions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'SolutionSummaries') foreach (@{ $result->SolutionSummaries });
    }

    return undef
  }


  sub operations { qw/AcceptEngagementInvitation AssignOpportunity AssociateOpportunity CreateEngagement CreateEngagementInvitation CreateOpportunity CreateResourceSnapshot CreateResourceSnapshotJob DeleteResourceSnapshotJob DisassociateOpportunity GetAwsOpportunitySummary GetEngagement GetEngagementInvitation GetOpportunity GetResourceSnapshot GetResourceSnapshotJob GetSellingSystemSettings ListEngagementByAcceptingInvitationTasks ListEngagementFromOpportunityTasks ListEngagementInvitations ListEngagementMembers ListEngagementResourceAssociations ListEngagements ListOpportunities ListResourceSnapshotJobs ListResourceSnapshots ListSolutions ListTagsForResource PutSellingSystemSettings RejectEngagementInvitation StartEngagementByAcceptingInvitationTask StartEngagementFromOpportunityTask StartResourceSnapshotJob StopResourceSnapshotJob SubmitOpportunity TagResource UntagResource UpdateOpportunity / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::PartnerCentralSelling - Perl Interface to AWS Partner Central Selling API

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('PartnerCentralSelling');
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

AWS Partner Central API for Selling

B<AWS Partner Central API for Selling Reference Guide>

This Amazon Web Services (AWS) Partner Central API reference is
designed to help AWS Partners
(http://aws.amazon.com/partners/programs/) integrate Customer
Relationship Management (CRM) systems with AWS Partner Central.
Partners can automate interactions with AWS Partner Central, which
helps to ensure effective engagements in joint business activities.

The API provides standard AWS API functionality. Access it by either
using API Actions
(https://docs.aws.amazon.com/partner-central/latest/selling-api/API_Operations.html)
or by using an AWS SDK that's tailored to your programming language or
platform. For more information, see Getting Started with AWS
(http://aws.amazon.com/getting-started) and Tools to Build on AWS
(http://aws.amazon.com/developer/tools/).

B<Features offered by AWS Partner Central API>

=over

=item 1.

B<Opportunity management:> Manages coselling opportunities through API
actions such as C<CreateOpportunity>, C<UpdateOpportunity>,
C<ListOpportunities>, C<GetOpportunity>, and C<AssignOpportunity>.

=item 2.

B<AWS referral management:> Manages referrals shared by AWS using
actions such as C<ListEngagementInvitations>,
C<GetEngagementInvitation>, C<StartEngagementByAcceptingInvitation>,
and C<RejectEngagementInvitation>.

=item 3.

B<Entity association:> Associates related entities such as I<AWS
Products>, I<Partner Solutions>, and I<AWS Marketplace Private Offers>
with opportunities using the actions C<AssociateOpportunity>, and
C<DisassociateOpportunity>.

=item 4.

B<View AWS opportunity details:> Retrieves real-time summaries of AWS
opportunities using the C<GetAWSOpportunitySummary> action.

=item 5.

B<List solutions:> Provides list APIs for listing partner offers using
C<ListSolutions>.

=item 6.

B<Event subscription:> Subscribe to real-time opportunity updates
through AWS EventBridge by using actions such as I<Opportunity
Created>, I<Opportunity Updated>, I<Engagement Invitation Accepted>,
I<Engagement Invitation Rejected>, and I<Engagement Invitation
Created>.

=back


For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26>


=head1 METHODS

=head2 AcceptEngagementInvitation

=over

=item Catalog => Str

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::PartnerCentralSelling::AcceptEngagementInvitation>

Returns: nothing

Use the C<AcceptEngagementInvitation> action to accept an engagement
invitation shared by AWS. Accepting the invitation indicates your
willingness to participate in the engagement, granting you access to
all engagement-related data.


=head2 AssignOpportunity

=over

=item Assignee => L<Paws::PartnerCentralSelling::AssigneeContact>

=item Catalog => Str

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::PartnerCentralSelling::AssignOpportunity>

Returns: nothing

Enables you to reassign an existing C<Opportunity> to another user
within your Partner Central account. The specified user receives the
opportunity, and it appears on their Partner Central dashboard,
allowing them to take necessary actions or proceed with the
opportunity.

This is useful for distributing opportunities to the appropriate team
members or departments within your organization, ensuring that each
opportunity is handled by the right person. By default, the opportunity
owner is the one who creates it. Currently, there's no API to enumerate
the list of available users.


=head2 AssociateOpportunity

=over

=item Catalog => Str

=item OpportunityIdentifier => Str

=item RelatedEntityIdentifier => Str

=item RelatedEntityType => Str


=back

Each argument is described in detail in: L<Paws::PartnerCentralSelling::AssociateOpportunity>

Returns: nothing

Enables you to create a formal association between an C<Opportunity>
and various related entities, enriching the context and details of the
opportunity for better collaboration and decision making. You can
associate an opportunity with the following entity types:

=over

=item *

Partner Solution: A software product or consulting practice created and
delivered by Partners. Partner Solutions help customers address
business challenges using Amazon Web Services services.

=item *

Amazon Web Services Products: Amazon Web Services offers many products
and services that provide scalable, reliable, and cost-effective
infrastructure solutions. For the latest list of Amazon Web Services
products, see Amazon Web Services products
(https://github.com/aws-samples/partner-crm-integration-samples/blob/main/resources/aws_products.json).

=item *

Amazon Web Services Marketplace private offer: Allows Amazon Web
Services Marketplace sellers to extend custom pricing and terms to
individual Amazon Web Services customers. Sellers can negotiate custom
prices, payment schedules, and end user license terms through private
offers, enabling Amazon Web Services customers to acquire software
solutions tailored to their specific needs. For more information, see
Private offers in Amazon Web Services Marketplace
(https://docs.aws.amazon.com/marketplace/latest/buyerguide/buyer-private-offers.html).

=back

To obtain identifiers for these entities, use the following methods:

=over

=item *

Solution: Use the C<ListSolutions> operation.

=item *

AWS Products: For the latest list of Amazon Web Services products, see
Amazon Web Services products
(https://github.com/aws-samples/partner-crm-integration-samples/blob/main/resources/aws_products.json).

=item *

Amazon Web Services Marketplace private offer: Use the Using the Amazon
Web Services Marketplace Catalog API
(https://docs.aws.amazon.com/marketplace/latest/APIReference/catalog-apis.html)
to list entities. Specifically, use the C<ListEntities> operation to
retrieve a list of private offers. The request returns the details of
available private offers. For more information, see ListEntities
(https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/API_ListEntities.html).

=back



=head2 CreateEngagement

=over

=item Catalog => Str

=item ClientToken => Str

=item Description => Str

=item Title => Str

=item [Contexts => ArrayRef[L<Paws::PartnerCentralSelling::EngagementContextDetails>]]


=back

Each argument is described in detail in: L<Paws::PartnerCentralSelling::CreateEngagement>

Returns: a L<Paws::PartnerCentralSelling::CreateEngagementResponse> instance

The C<CreateEngagement> action allows you to create an C<Engagement>,
which serves as a collaborative space between different parties such as
AWS Partners and AWS Sellers. This action automatically adds the
caller's AWS account as an active member of the newly created
C<Engagement>.


=head2 CreateEngagementInvitation

=over

=item Catalog => Str

=item ClientToken => Str

=item EngagementIdentifier => Str

=item Invitation => L<Paws::PartnerCentralSelling::Invitation>


=back

Each argument is described in detail in: L<Paws::PartnerCentralSelling::CreateEngagementInvitation>

Returns: a L<Paws::PartnerCentralSelling::CreateEngagementInvitationResponse> instance

This action creates an invitation from a sender to a single receiver to
join an engagement.


=head2 CreateOpportunity

=over

=item Catalog => Str

=item ClientToken => Str

=item [Customer => L<Paws::PartnerCentralSelling::Customer>]

=item [LifeCycle => L<Paws::PartnerCentralSelling::LifeCycle>]

=item [Marketing => L<Paws::PartnerCentralSelling::Marketing>]

=item [NationalSecurity => Str]

=item [OpportunityTeam => ArrayRef[L<Paws::PartnerCentralSelling::Contact>]]

=item [OpportunityType => Str]

=item [Origin => Str]

=item [PartnerOpportunityIdentifier => Str]

=item [PrimaryNeedsFromAws => ArrayRef[Str|Undef]]

=item [Project => L<Paws::PartnerCentralSelling::Project>]

=item [SoftwareRevenue => L<Paws::PartnerCentralSelling::SoftwareRevenue>]


=back

Each argument is described in detail in: L<Paws::PartnerCentralSelling::CreateOpportunity>

Returns: a L<Paws::PartnerCentralSelling::CreateOpportunityResponse> instance

Creates an C<Opportunity> record in Partner Central. Use this operation
to create a potential business opportunity for submission to Amazon Web
Services. Creating an opportunity sets C<Lifecycle.ReviewStatus> to
C<Pending Submission>.

To submit an opportunity, follow these steps:

=over

=item 1.

To create the opportunity, use C<CreateOpportunity>.

=item 2.

To associate a solution with the opportunity, use
C<AssociateOpportunity>.

=item 3.

To start the engagement with AWS, use
C<StartEngagementFromOpportunity>.

=back

After submission, you can't edit the opportunity until the review is
complete. But opportunities in the C<Pending Submission> state must
have complete details. You can update the opportunity while it's in the
C<Pending Submission> state.

There's a set of mandatory fields to create opportunities, but consider
providing optional fields to enrich the opportunity record.


=head2 CreateResourceSnapshot

=over

=item Catalog => Str

=item ClientToken => Str

=item EngagementIdentifier => Str

=item ResourceIdentifier => Str

=item ResourceSnapshotTemplateIdentifier => Str

=item ResourceType => Str


=back

Each argument is described in detail in: L<Paws::PartnerCentralSelling::CreateResourceSnapshot>

Returns: a L<Paws::PartnerCentralSelling::CreateResourceSnapshotResponse> instance

This action allows you to create an immutable snapshot of a specific
resource, such as an opportunity, within the context of an engagement.
The snapshot captures a subset of the resource's data based on the
schema defined by the provided template.


=head2 CreateResourceSnapshotJob

=over

=item Catalog => Str

=item ClientToken => Str

=item EngagementIdentifier => Str

=item ResourceIdentifier => Str

=item ResourceSnapshotTemplateIdentifier => Str

=item ResourceType => Str

=item [Tags => ArrayRef[L<Paws::PartnerCentralSelling::Tag>]]


=back

Each argument is described in detail in: L<Paws::PartnerCentralSelling::CreateResourceSnapshotJob>

Returns: a L<Paws::PartnerCentralSelling::CreateResourceSnapshotJobResponse> instance

Use this action to create a job to generate a snapshot of the specified
resource within an engagement. It initiates an asynchronous process to
create a resource snapshot. The job creates a new snapshot only if the
resource state has changed, adhering to the same access control and
immutability rules as direct snapshot creation.


=head2 DeleteResourceSnapshotJob

=over

=item Catalog => Str

=item ResourceSnapshotJobIdentifier => Str


=back

Each argument is described in detail in: L<Paws::PartnerCentralSelling::DeleteResourceSnapshotJob>

Returns: nothing

Use this action to deletes a previously created resource snapshot job.
The job must be in a stopped state before it can be deleted.


=head2 DisassociateOpportunity

=over

=item Catalog => Str

=item OpportunityIdentifier => Str

=item RelatedEntityIdentifier => Str

=item RelatedEntityType => Str


=back

Each argument is described in detail in: L<Paws::PartnerCentralSelling::DisassociateOpportunity>

Returns: nothing

Allows you to remove an existing association between an C<Opportunity>
and related entities, such as a Partner Solution, Amazon Web Services
product, or an Amazon Web Services Marketplace offer. This operation is
the counterpart to C<AssociateOpportunity>, and it provides flexibility
to manage associations as business needs change.

Use this operation to update the associations of an C<Opportunity> due
to changes in the related entities, or if an association was made in
error. Ensuring accurate associations helps maintain clarity and
accuracy to track and manage business opportunities. When you replace
an entity, first attach the new entity and then disassociate the one to
be removed, especially if it's the last remaining entity that's
required.


=head2 GetAwsOpportunitySummary

=over

=item Catalog => Str

=item RelatedOpportunityIdentifier => Str


=back

Each argument is described in detail in: L<Paws::PartnerCentralSelling::GetAwsOpportunitySummary>

Returns: a L<Paws::PartnerCentralSelling::GetAwsOpportunitySummaryResponse> instance

Retrieves a summary of an AWS Opportunity. This summary includes
high-level details about the opportunity sourced from AWS, such as
lifecycle information, customer details, and involvement type. It is
useful for tracking updates on the AWS opportunity corresponding to an
opportunity in the partner's account.


=head2 GetEngagement

=over

=item Catalog => Str

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::PartnerCentralSelling::GetEngagement>

Returns: a L<Paws::PartnerCentralSelling::GetEngagementResponse> instance

Use this action to retrieve the engagement record for a given
C<EngagementIdentifier>.


=head2 GetEngagementInvitation

=over

=item Catalog => Str

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::PartnerCentralSelling::GetEngagementInvitation>

Returns: a L<Paws::PartnerCentralSelling::GetEngagementInvitationResponse> instance

Retrieves the details of an engagement invitation shared by AWS with a
partner. The information includes aspects such as customer, project
details, and lifecycle information. To connect an engagement invitation
with an opportunity, match the invitationE<rsquo>s
C<Payload.Project.Title> with opportunity C<Project.Title>.


=head2 GetOpportunity

=over

=item Catalog => Str

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::PartnerCentralSelling::GetOpportunity>

Returns: a L<Paws::PartnerCentralSelling::GetOpportunityResponse> instance

Fetches the C<Opportunity> record from Partner Central by a given
C<Identifier>.

Use the C<ListOpportunities> action or the event notification (from
Amazon EventBridge) to obtain this identifier.


=head2 GetResourceSnapshot

=over

=item Catalog => Str

=item EngagementIdentifier => Str

=item ResourceIdentifier => Str

=item ResourceSnapshotTemplateIdentifier => Str

=item ResourceType => Str

=item [Revision => Int]


=back

Each argument is described in detail in: L<Paws::PartnerCentralSelling::GetResourceSnapshot>

Returns: a L<Paws::PartnerCentralSelling::GetResourceSnapshotResponse> instance

Use this action to retrieve a specific snapshot record.


=head2 GetResourceSnapshotJob

=over

=item Catalog => Str

=item ResourceSnapshotJobIdentifier => Str


=back

Each argument is described in detail in: L<Paws::PartnerCentralSelling::GetResourceSnapshotJob>

Returns: a L<Paws::PartnerCentralSelling::GetResourceSnapshotJobResponse> instance

Use this action to retrieves information about a specific resource
snapshot job.


=head2 GetSellingSystemSettings

=over

=item Catalog => Str


=back

Each argument is described in detail in: L<Paws::PartnerCentralSelling::GetSellingSystemSettings>

Returns: a L<Paws::PartnerCentralSelling::GetSellingSystemSettingsResponse> instance

Retrieves the currently set system settings, which include the IAM Role
used for resource snapshot jobs.


=head2 ListEngagementByAcceptingInvitationTasks

=over

=item Catalog => Str

=item [EngagementInvitationIdentifier => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [OpportunityIdentifier => ArrayRef[Str|Undef]]

=item [Sort => L<Paws::PartnerCentralSelling::ListTasksSortBase>]

=item [TaskIdentifier => ArrayRef[Str|Undef]]

=item [TaskStatus => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::PartnerCentralSelling::ListEngagementByAcceptingInvitationTasks>

Returns: a L<Paws::PartnerCentralSelling::ListEngagementByAcceptingInvitationTasksResponse> instance

Lists all in-progress, completed, or failed
StartEngagementByAcceptingInvitationTask tasks that were initiated by
the caller's account.


=head2 ListEngagementFromOpportunityTasks

=over

=item Catalog => Str

=item [EngagementIdentifier => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [OpportunityIdentifier => ArrayRef[Str|Undef]]

=item [Sort => L<Paws::PartnerCentralSelling::ListTasksSortBase>]

=item [TaskIdentifier => ArrayRef[Str|Undef]]

=item [TaskStatus => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::PartnerCentralSelling::ListEngagementFromOpportunityTasks>

Returns: a L<Paws::PartnerCentralSelling::ListEngagementFromOpportunityTasksResponse> instance

Lists all in-progress, completed, or failed
C<EngagementFromOpportunity> tasks that were initiated by the caller's
account.


=head2 ListEngagementInvitations

=over

=item Catalog => Str

=item ParticipantType => Str

=item [EngagementIdentifier => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [PayloadType => ArrayRef[Str|Undef]]

=item [SenderAwsAccountId => ArrayRef[Str|Undef]]

=item [Sort => L<Paws::PartnerCentralSelling::OpportunityEngagementInvitationSort>]

=item [Status => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::PartnerCentralSelling::ListEngagementInvitations>

Returns: a L<Paws::PartnerCentralSelling::ListEngagementInvitationsResponse> instance

Retrieves a list of engagement invitations sent to the partner. This
allows partners to view all pending or past engagement invitations,
helping them track opportunities shared by AWS.


=head2 ListEngagementMembers

=over

=item Catalog => Str

=item Identifier => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::PartnerCentralSelling::ListEngagementMembers>

Returns: a L<Paws::PartnerCentralSelling::ListEngagementMembersResponse> instance

Retrieves the details of member partners in an Engagement. This
operation can only be invoked by members of the Engagement. The
C<ListEngagementMembers> operation allows you to fetch information
about the members of a specific Engagement. This action is restricted
to members of the Engagement being queried.


=head2 ListEngagementResourceAssociations

=over

=item Catalog => Str

=item [CreatedBy => Str]

=item [EngagementIdentifier => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ResourceIdentifier => Str]

=item [ResourceType => Str]


=back

Each argument is described in detail in: L<Paws::PartnerCentralSelling::ListEngagementResourceAssociations>

Returns: a L<Paws::PartnerCentralSelling::ListEngagementResourceAssociationsResponse> instance

Lists the associations between resources and engagements where the
caller is a member and has at least one snapshot in the engagement.


=head2 ListEngagements

=over

=item Catalog => Str

=item [CreatedBy => ArrayRef[Str|Undef]]

=item [EngagementIdentifier => ArrayRef[Str|Undef]]

=item [ExcludeCreatedBy => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Sort => L<Paws::PartnerCentralSelling::EngagementSort>]


=back

Each argument is described in detail in: L<Paws::PartnerCentralSelling::ListEngagements>

Returns: a L<Paws::PartnerCentralSelling::ListEngagementsResponse> instance

This action allows users to retrieve a list of Engagement records from
Partner Central. This action can be used to manage and track various
engagements across different stages of the partner selling process.


=head2 ListOpportunities

=over

=item Catalog => Str

=item [CustomerCompanyName => ArrayRef[Str|Undef]]

=item [Identifier => ArrayRef[Str|Undef]]

=item [LastModifiedDate => L<Paws::PartnerCentralSelling::LastModifiedDate>]

=item [LifeCycleReviewStatus => ArrayRef[Str|Undef]]

=item [LifeCycleStage => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Sort => L<Paws::PartnerCentralSelling::OpportunitySort>]


=back

Each argument is described in detail in: L<Paws::PartnerCentralSelling::ListOpportunities>

Returns: a L<Paws::PartnerCentralSelling::ListOpportunitiesResponse> instance

This request accepts a list of filters that retrieve opportunity
subsets as well as sort options. This feature is available to partners
from Partner Central (https://partnercentral.awspartner.com/) using the
C<ListOpportunities> API action.

To synchronize your system with Amazon Web Services, only list the
opportunities that were newly created or updated. We recommend you rely
on events emitted by the service into your Amazon Web Services
accountE<rsquo>s Amazon EventBridge default event bus, you can also use
the C<ListOpportunities> action.

We recommend the following approach:

=over

=item 1.

Find the latest C<LastModifiedDate> that you stored, and only use the
values that came from Amazon Web Services. DonE<rsquo>t use values
generated by your system.

=item 2.

When you send a C<ListOpportunities> request, submit the date in ISO
8601 format in the C<AfterLastModifiedDate> filter.

=item 3.

Amazon Web Services only returns opportunities created or updated on or
after that date and time. Use C<NextToken> to iterate over all pages.

=back



=head2 ListResourceSnapshotJobs

=over

=item Catalog => Str

=item [EngagementIdentifier => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Sort => L<Paws::PartnerCentralSelling::SortObject>]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::PartnerCentralSelling::ListResourceSnapshotJobs>

Returns: a L<Paws::PartnerCentralSelling::ListResourceSnapshotJobsResponse> instance

Lists resource snapshot jobs owned by the customer. This operation
supports various filtering scenarios, including listing all jobs owned
by the caller, jobs for a specific engagement, jobs with a specific
status, or any combination of these filters.


=head2 ListResourceSnapshots

=over

=item Catalog => Str

=item EngagementIdentifier => Str

=item [CreatedBy => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ResourceIdentifier => Str]

=item [ResourceSnapshotTemplateIdentifier => Str]

=item [ResourceType => Str]


=back

Each argument is described in detail in: L<Paws::PartnerCentralSelling::ListResourceSnapshots>

Returns: a L<Paws::PartnerCentralSelling::ListResourceSnapshotsResponse> instance

Retrieves a list of resource view snapshots based on specified
criteria. This operation supports various use cases, including:

=over

=item *

Fetching all snapshots associated with an engagement.

=item *

Retrieving snapshots of a specific resource type within an engagement.

=item *

Obtaining snapshots for a particular resource using a specified
template.

=item *

Accessing the latest snapshot of a resource within an engagement.

=item *

Filtering snapshots by resource owner.

=back



=head2 ListSolutions

=over

=item Catalog => Str

=item [Category => ArrayRef[Str|Undef]]

=item [Identifier => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Sort => L<Paws::PartnerCentralSelling::SolutionSort>]

=item [Status => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::PartnerCentralSelling::ListSolutions>

Returns: a L<Paws::PartnerCentralSelling::ListSolutionsResponse> instance

Retrieves a list of Partner Solutions that the partner registered on
Partner Central. This API is used to generate a list of solutions that
an end user selects from for association with an opportunity.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::PartnerCentralSelling::ListTagsForResource>

Returns: a L<Paws::PartnerCentralSelling::ListTagsForResourceResponse> instance

Returns a list of tags for a resource.


=head2 PutSellingSystemSettings

=over

=item Catalog => Str

=item [ResourceSnapshotJobRoleIdentifier => Str]


=back

Each argument is described in detail in: L<Paws::PartnerCentralSelling::PutSellingSystemSettings>

Returns: a L<Paws::PartnerCentralSelling::PutSellingSystemSettingsResponse> instance

Updates the currently set system settings, which include the IAM Role
used for resource snapshot jobs.


=head2 RejectEngagementInvitation

=over

=item Catalog => Str

=item Identifier => Str

=item [RejectionReason => Str]


=back

Each argument is described in detail in: L<Paws::PartnerCentralSelling::RejectEngagementInvitation>

Returns: nothing

This action rejects an C<EngagementInvitation> that AWS shared.
Rejecting an invitation indicates that the partner doesn't want to
pursue the opportunity, and all related data will become inaccessible
thereafter.


=head2 StartEngagementByAcceptingInvitationTask

=over

=item Catalog => Str

=item ClientToken => Str

=item Identifier => Str

=item [Tags => ArrayRef[L<Paws::PartnerCentralSelling::Tag>]]


=back

Each argument is described in detail in: L<Paws::PartnerCentralSelling::StartEngagementByAcceptingInvitationTask>

Returns: a L<Paws::PartnerCentralSelling::StartEngagementByAcceptingInvitationTaskResponse> instance

This action starts the engagement by accepting an
C<EngagementInvitation>. The task is asynchronous and involves the
following steps: accepting the invitation, creating an opportunity in
the partnerE<rsquo>s account from the AWS opportunity, and copying
details for tracking. When completed, an C<Opportunity Created> event
is generated, indicating that the opportunity has been successfully
created in the partner's account.


=head2 StartEngagementFromOpportunityTask

=over

=item AwsSubmission => L<Paws::PartnerCentralSelling::AwsSubmission>

=item Catalog => Str

=item ClientToken => Str

=item Identifier => Str

=item [Tags => ArrayRef[L<Paws::PartnerCentralSelling::Tag>]]


=back

Each argument is described in detail in: L<Paws::PartnerCentralSelling::StartEngagementFromOpportunityTask>

Returns: a L<Paws::PartnerCentralSelling::StartEngagementFromOpportunityTaskResponse> instance

This action initiates the engagement process from an existing
opportunity by accepting the engagement invitation and creating a
corresponding opportunity in the partnerE<rsquo>s system. Similar to
C<StartEngagementByAcceptingInvitationTask>, this action is
asynchronous and performs multiple steps before completion.


=head2 StartResourceSnapshotJob

=over

=item Catalog => Str

=item ResourceSnapshotJobIdentifier => Str


=back

Each argument is described in detail in: L<Paws::PartnerCentralSelling::StartResourceSnapshotJob>

Returns: nothing

Starts a resource snapshot job that has been previously created.


=head2 StopResourceSnapshotJob

=over

=item Catalog => Str

=item ResourceSnapshotJobIdentifier => Str


=back

Each argument is described in detail in: L<Paws::PartnerCentralSelling::StopResourceSnapshotJob>

Returns: nothing

Stops a resource snapshot job. The job must be started prior to being
stopped.


=head2 SubmitOpportunity

=over

=item Catalog => Str

=item Identifier => Str

=item InvolvementType => Str

=item [Visibility => Str]


=back

Each argument is described in detail in: L<Paws::PartnerCentralSelling::SubmitOpportunity>

Returns: nothing

Use this action to submit an Opportunity that was previously created by
partner for AWS review. After you perform this action, the Opportunity
becomes non-editable until it is reviewed by AWS and has C<
LifeCycle.ReviewStatus > as either C<Approved> or C<Action Required>.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => ArrayRef[L<Paws::PartnerCentralSelling::Tag>]


=back

Each argument is described in detail in: L<Paws::PartnerCentralSelling::TagResource>

Returns: a L<Paws::PartnerCentralSelling::TagResourceResponse> instance

Assigns one or more tags (key-value pairs) to the specified resource.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::PartnerCentralSelling::UntagResource>

Returns: a L<Paws::PartnerCentralSelling::UntagResourceResponse> instance

Removes a tag or tags from a resource.


=head2 UpdateOpportunity

=over

=item Catalog => Str

=item Identifier => Str

=item LastModifiedDate => Str

=item [Customer => L<Paws::PartnerCentralSelling::Customer>]

=item [LifeCycle => L<Paws::PartnerCentralSelling::LifeCycle>]

=item [Marketing => L<Paws::PartnerCentralSelling::Marketing>]

=item [NationalSecurity => Str]

=item [OpportunityType => Str]

=item [PartnerOpportunityIdentifier => Str]

=item [PrimaryNeedsFromAws => ArrayRef[Str|Undef]]

=item [Project => L<Paws::PartnerCentralSelling::Project>]

=item [SoftwareRevenue => L<Paws::PartnerCentralSelling::SoftwareRevenue>]


=back

Each argument is described in detail in: L<Paws::PartnerCentralSelling::UpdateOpportunity>

Returns: a L<Paws::PartnerCentralSelling::UpdateOpportunityResponse> instance

Updates the C<Opportunity> record identified by a given C<Identifier>.
This operation allows you to modify the details of an existing
opportunity to reflect the latest information and progress. Use this
action to keep the opportunity record up-to-date and accurate.

When you perform updates, include the entire payload with each request.
If any field is omitted, the API assumes that the field is set to
C<null>. The best practice is to always perform a C<GetOpportunity> to
retrieve the latest values, then send the complete payload with the
updated values to be changed.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllEngagementByAcceptingInvitationTasks(sub { },Catalog => Str, [EngagementInvitationIdentifier => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str, OpportunityIdentifier => ArrayRef[Str|Undef], Sort => L<Paws::PartnerCentralSelling::ListTasksSortBase>, TaskIdentifier => ArrayRef[Str|Undef], TaskStatus => ArrayRef[Str|Undef]])

=head2 ListAllEngagementByAcceptingInvitationTasks(Catalog => Str, [EngagementInvitationIdentifier => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str, OpportunityIdentifier => ArrayRef[Str|Undef], Sort => L<Paws::PartnerCentralSelling::ListTasksSortBase>, TaskIdentifier => ArrayRef[Str|Undef], TaskStatus => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TaskSummaries, passing the object as the first parameter, and the string 'TaskSummaries' as the second parameter 

If not, it will return a a L<Paws::PartnerCentralSelling::ListEngagementByAcceptingInvitationTasksResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllEngagementFromOpportunityTasks(sub { },Catalog => Str, [EngagementIdentifier => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str, OpportunityIdentifier => ArrayRef[Str|Undef], Sort => L<Paws::PartnerCentralSelling::ListTasksSortBase>, TaskIdentifier => ArrayRef[Str|Undef], TaskStatus => ArrayRef[Str|Undef]])

=head2 ListAllEngagementFromOpportunityTasks(Catalog => Str, [EngagementIdentifier => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str, OpportunityIdentifier => ArrayRef[Str|Undef], Sort => L<Paws::PartnerCentralSelling::ListTasksSortBase>, TaskIdentifier => ArrayRef[Str|Undef], TaskStatus => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TaskSummaries, passing the object as the first parameter, and the string 'TaskSummaries' as the second parameter 

If not, it will return a a L<Paws::PartnerCentralSelling::ListEngagementFromOpportunityTasksResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllEngagementInvitations(sub { },Catalog => Str, ParticipantType => Str, [EngagementIdentifier => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str, PayloadType => ArrayRef[Str|Undef], SenderAwsAccountId => ArrayRef[Str|Undef], Sort => L<Paws::PartnerCentralSelling::OpportunityEngagementInvitationSort>, Status => ArrayRef[Str|Undef]])

=head2 ListAllEngagementInvitations(Catalog => Str, ParticipantType => Str, [EngagementIdentifier => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str, PayloadType => ArrayRef[Str|Undef], SenderAwsAccountId => ArrayRef[Str|Undef], Sort => L<Paws::PartnerCentralSelling::OpportunityEngagementInvitationSort>, Status => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - EngagementInvitationSummaries, passing the object as the first parameter, and the string 'EngagementInvitationSummaries' as the second parameter 

If not, it will return a a L<Paws::PartnerCentralSelling::ListEngagementInvitationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllEngagementMembers(sub { },Catalog => Str, Identifier => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllEngagementMembers(Catalog => Str, Identifier => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - EngagementMemberList, passing the object as the first parameter, and the string 'EngagementMemberList' as the second parameter 

If not, it will return a a L<Paws::PartnerCentralSelling::ListEngagementMembersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllEngagementResourceAssociations(sub { },Catalog => Str, [CreatedBy => Str, EngagementIdentifier => Str, MaxResults => Int, NextToken => Str, ResourceIdentifier => Str, ResourceType => Str])

=head2 ListAllEngagementResourceAssociations(Catalog => Str, [CreatedBy => Str, EngagementIdentifier => Str, MaxResults => Int, NextToken => Str, ResourceIdentifier => Str, ResourceType => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - EngagementResourceAssociationSummaries, passing the object as the first parameter, and the string 'EngagementResourceAssociationSummaries' as the second parameter 

If not, it will return a a L<Paws::PartnerCentralSelling::ListEngagementResourceAssociationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllEngagements(sub { },Catalog => Str, [CreatedBy => ArrayRef[Str|Undef], EngagementIdentifier => ArrayRef[Str|Undef], ExcludeCreatedBy => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str, Sort => L<Paws::PartnerCentralSelling::EngagementSort>])

=head2 ListAllEngagements(Catalog => Str, [CreatedBy => ArrayRef[Str|Undef], EngagementIdentifier => ArrayRef[Str|Undef], ExcludeCreatedBy => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str, Sort => L<Paws::PartnerCentralSelling::EngagementSort>])


If passed a sub as first parameter, it will call the sub for each element found in :

 - EngagementSummaryList, passing the object as the first parameter, and the string 'EngagementSummaryList' as the second parameter 

If not, it will return a a L<Paws::PartnerCentralSelling::ListEngagementsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllOpportunities(sub { },Catalog => Str, [CustomerCompanyName => ArrayRef[Str|Undef], Identifier => ArrayRef[Str|Undef], LastModifiedDate => L<Paws::PartnerCentralSelling::LastModifiedDate>, LifeCycleReviewStatus => ArrayRef[Str|Undef], LifeCycleStage => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str, Sort => L<Paws::PartnerCentralSelling::OpportunitySort>])

=head2 ListAllOpportunities(Catalog => Str, [CustomerCompanyName => ArrayRef[Str|Undef], Identifier => ArrayRef[Str|Undef], LastModifiedDate => L<Paws::PartnerCentralSelling::LastModifiedDate>, LifeCycleReviewStatus => ArrayRef[Str|Undef], LifeCycleStage => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str, Sort => L<Paws::PartnerCentralSelling::OpportunitySort>])


If passed a sub as first parameter, it will call the sub for each element found in :

 - OpportunitySummaries, passing the object as the first parameter, and the string 'OpportunitySummaries' as the second parameter 

If not, it will return a a L<Paws::PartnerCentralSelling::ListOpportunitiesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllResourceSnapshotJobs(sub { },Catalog => Str, [EngagementIdentifier => Str, MaxResults => Int, NextToken => Str, Sort => L<Paws::PartnerCentralSelling::SortObject>, Status => Str])

=head2 ListAllResourceSnapshotJobs(Catalog => Str, [EngagementIdentifier => Str, MaxResults => Int, NextToken => Str, Sort => L<Paws::PartnerCentralSelling::SortObject>, Status => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ResourceSnapshotJobSummaries, passing the object as the first parameter, and the string 'ResourceSnapshotJobSummaries' as the second parameter 

If not, it will return a a L<Paws::PartnerCentralSelling::ListResourceSnapshotJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllResourceSnapshots(sub { },Catalog => Str, EngagementIdentifier => Str, [CreatedBy => Str, MaxResults => Int, NextToken => Str, ResourceIdentifier => Str, ResourceSnapshotTemplateIdentifier => Str, ResourceType => Str])

=head2 ListAllResourceSnapshots(Catalog => Str, EngagementIdentifier => Str, [CreatedBy => Str, MaxResults => Int, NextToken => Str, ResourceIdentifier => Str, ResourceSnapshotTemplateIdentifier => Str, ResourceType => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ResourceSnapshotSummaries, passing the object as the first parameter, and the string 'ResourceSnapshotSummaries' as the second parameter 

If not, it will return a a L<Paws::PartnerCentralSelling::ListResourceSnapshotsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSolutions(sub { },Catalog => Str, [Category => ArrayRef[Str|Undef], Identifier => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str, Sort => L<Paws::PartnerCentralSelling::SolutionSort>, Status => ArrayRef[Str|Undef]])

=head2 ListAllSolutions(Catalog => Str, [Category => ArrayRef[Str|Undef], Identifier => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str, Sort => L<Paws::PartnerCentralSelling::SolutionSort>, Status => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - SolutionSummaries, passing the object as the first parameter, and the string 'SolutionSummaries' as the second parameter 

If not, it will return a a L<Paws::PartnerCentralSelling::ListSolutionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

