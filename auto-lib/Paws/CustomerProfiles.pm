package Paws::CustomerProfiles;
  use Moose;
  sub service { 'profile' }
  sub signing_name { 'profile' }
  sub version { '2020-08-15' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub AddProfileKey {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::AddProfileKey', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchGetCalculatedAttributeForProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::BatchGetCalculatedAttributeForProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchGetProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::BatchGetProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateCalculatedAttributeDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::CreateCalculatedAttributeDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::CreateDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateEventStream {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::CreateEventStream', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateEventTrigger {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::CreateEventTrigger', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateIntegrationWorkflow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::CreateIntegrationWorkflow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::CreateProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSegmentDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::CreateSegmentDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSegmentEstimate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::CreateSegmentEstimate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSegmentSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::CreateSegmentSnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCalculatedAttributeDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::DeleteCalculatedAttributeDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::DeleteDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteEventStream {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::DeleteEventStream', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteEventTrigger {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::DeleteEventTrigger', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteIntegration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::DeleteIntegration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::DeleteProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteProfileKey {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::DeleteProfileKey', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteProfileObject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::DeleteProfileObject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteProfileObjectType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::DeleteProfileObjectType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSegmentDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::DeleteSegmentDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteWorkflow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::DeleteWorkflow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DetectProfileObjectType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::DetectProfileObjectType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAutoMergingPreview {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::GetAutoMergingPreview', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCalculatedAttributeDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::GetCalculatedAttributeDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCalculatedAttributeForProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::GetCalculatedAttributeForProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::GetDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEventStream {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::GetEventStream', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEventTrigger {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::GetEventTrigger', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetIdentityResolutionJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::GetIdentityResolutionJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetIntegration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::GetIntegration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMatches {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::GetMatches', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetProfileObjectType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::GetProfileObjectType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetProfileObjectTypeTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::GetProfileObjectTypeTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSegmentDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::GetSegmentDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSegmentEstimate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::GetSegmentEstimate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSegmentMembership {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::GetSegmentMembership', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSegmentSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::GetSegmentSnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSimilarProfiles {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::GetSimilarProfiles', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetWorkflow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::GetWorkflow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetWorkflowSteps {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::GetWorkflowSteps', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAccountIntegrations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::ListAccountIntegrations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCalculatedAttributeDefinitions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::ListCalculatedAttributeDefinitions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCalculatedAttributesForProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::ListCalculatedAttributesForProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDomains {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::ListDomains', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEventStreams {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::ListEventStreams', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEventTriggers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::ListEventTriggers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListIdentityResolutionJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::ListIdentityResolutionJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListIntegrations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::ListIntegrations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListObjectTypeAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::ListObjectTypeAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListProfileAttributeValues {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::ListProfileAttributeValues', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListProfileObjects {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::ListProfileObjects', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListProfileObjectTypes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::ListProfileObjectTypes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListProfileObjectTypeTemplates {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::ListProfileObjectTypeTemplates', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRuleBasedMatches {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::ListRuleBasedMatches', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSegmentDefinitions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::ListSegmentDefinitions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListWorkflows {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::ListWorkflows', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub MergeProfiles {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::MergeProfiles', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutIntegration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::PutIntegration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutProfileObject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::PutProfileObject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutProfileObjectType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::PutProfileObjectType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchProfiles {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::SearchProfiles', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateCalculatedAttributeDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::UpdateCalculatedAttributeDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::UpdateDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateEventTrigger {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::UpdateEventTrigger', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CustomerProfiles::UpdateProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub GetAllSimilarProfiles {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetSimilarProfiles(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetSimilarProfiles(@_, NextToken => $next_result->NextToken);
        push @{ $result->ProfileIds }, @{ $next_result->ProfileIds };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ProfileIds') foreach (@{ $result->ProfileIds });
        $result = $self->GetSimilarProfiles(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ProfileIds') foreach (@{ $result->ProfileIds });
    }

    return undef
  }
  sub ListAllEventStreams {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListEventStreams(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListEventStreams(@_, NextToken => $next_result->NextToken);
        push @{ $result->Items }, @{ $next_result->Items };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Items') foreach (@{ $result->Items });
        $result = $self->ListEventStreams(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Items') foreach (@{ $result->Items });
    }

    return undef
  }
  sub ListAllEventTriggers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListEventTriggers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListEventTriggers(@_, NextToken => $next_result->NextToken);
        push @{ $result->Items }, @{ $next_result->Items };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Items') foreach (@{ $result->Items });
        $result = $self->ListEventTriggers(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Items') foreach (@{ $result->Items });
    }

    return undef
  }
  sub ListAllObjectTypeAttributes {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListObjectTypeAttributes(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListObjectTypeAttributes(@_, NextToken => $next_result->NextToken);
        push @{ $result->Items }, @{ $next_result->Items };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Items') foreach (@{ $result->Items });
        $result = $self->ListObjectTypeAttributes(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Items') foreach (@{ $result->Items });
    }

    return undef
  }
  sub ListAllRuleBasedMatches {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListRuleBasedMatches(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListRuleBasedMatches(@_, NextToken => $next_result->NextToken);
        push @{ $result->MatchIds }, @{ $next_result->MatchIds };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'MatchIds') foreach (@{ $result->MatchIds });
        $result = $self->ListRuleBasedMatches(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'MatchIds') foreach (@{ $result->MatchIds });
    }

    return undef
  }
  sub ListAllSegmentDefinitions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSegmentDefinitions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListSegmentDefinitions(@_, NextToken => $next_result->NextToken);
        push @{ $result->Items }, @{ $next_result->Items };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Items') foreach (@{ $result->Items });
        $result = $self->ListSegmentDefinitions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Items') foreach (@{ $result->Items });
    }

    return undef
  }


  sub operations { qw/AddProfileKey BatchGetCalculatedAttributeForProfile BatchGetProfile CreateCalculatedAttributeDefinition CreateDomain CreateEventStream CreateEventTrigger CreateIntegrationWorkflow CreateProfile CreateSegmentDefinition CreateSegmentEstimate CreateSegmentSnapshot DeleteCalculatedAttributeDefinition DeleteDomain DeleteEventStream DeleteEventTrigger DeleteIntegration DeleteProfile DeleteProfileKey DeleteProfileObject DeleteProfileObjectType DeleteSegmentDefinition DeleteWorkflow DetectProfileObjectType GetAutoMergingPreview GetCalculatedAttributeDefinition GetCalculatedAttributeForProfile GetDomain GetEventStream GetEventTrigger GetIdentityResolutionJob GetIntegration GetMatches GetProfileObjectType GetProfileObjectTypeTemplate GetSegmentDefinition GetSegmentEstimate GetSegmentMembership GetSegmentSnapshot GetSimilarProfiles GetWorkflow GetWorkflowSteps ListAccountIntegrations ListCalculatedAttributeDefinitions ListCalculatedAttributesForProfile ListDomains ListEventStreams ListEventTriggers ListIdentityResolutionJobs ListIntegrations ListObjectTypeAttributes ListProfileAttributeValues ListProfileObjects ListProfileObjectTypes ListProfileObjectTypeTemplates ListRuleBasedMatches ListSegmentDefinitions ListTagsForResource ListWorkflows MergeProfiles PutIntegration PutProfileObject PutProfileObjectType SearchProfiles TagResource UntagResource UpdateCalculatedAttributeDefinition UpdateDomain UpdateEventTrigger UpdateProfile / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles - Perl Interface to AWS Amazon Connect Customer Profiles

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('CustomerProfiles');
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

Amazon Connect Customer Profiles

=over

=item *

Customer Profiles actions
(https://docs.aws.amazon.com/connect/latest/APIReference/API_Operations_Amazon_Connect_Customer_Profiles.html)

=item *

Customer Profiles data types
(https://docs.aws.amazon.com/connect/latest/APIReference/API_Types_Amazon_Connect_Customer_Profiles.html)

=back

Amazon Connect Customer Profiles is a unified customer profile for your
contact center that has pre-built connectors powered by AppFlow that
make it easy to combine customer information from third party
applications, such as Salesforce (CRM), ServiceNow (ITSM), and your
enterprise resource planning (ERP), with contact history from your
Amazon Connect contact center.

For more information about the Amazon Connect Customer Profiles
feature, see Use Customer Profiles
(https://docs.aws.amazon.com/connect/latest/adminguide/customer-profiles.html)
in the I<Amazon Connect Administrator's Guide>.

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 AddProfileKey

=over

=item DomainName => Str

=item KeyName => Str

=item ProfileId => Str

=item Values => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::AddProfileKey>

Returns: a L<Paws::CustomerProfiles::AddProfileKeyResponse> instance

Associates a new key value with a specific profile, such as a Contact
Record ContactId.

A profile object can have a single unique key and any number of
additional keys that can be used to identify the profile that it
belongs to.


=head2 BatchGetCalculatedAttributeForProfile

=over

=item CalculatedAttributeName => Str

=item DomainName => Str

=item ProfileIds => ArrayRef[Str|Undef]

=item [ConditionOverrides => L<Paws::CustomerProfiles::ConditionOverrides>]


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::BatchGetCalculatedAttributeForProfile>

Returns: a L<Paws::CustomerProfiles::BatchGetCalculatedAttributeForProfileResponse> instance

Fetch the possible attribute values given the attribute name.


=head2 BatchGetProfile

=over

=item DomainName => Str

=item ProfileIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::BatchGetProfile>

Returns: a L<Paws::CustomerProfiles::BatchGetProfileResponse> instance

Get a batch of profiles.


=head2 CreateCalculatedAttributeDefinition

=over

=item AttributeDetails => L<Paws::CustomerProfiles::AttributeDetails>

=item CalculatedAttributeName => Str

=item DomainName => Str

=item Statistic => Str

=item [Conditions => L<Paws::CustomerProfiles::Conditions>]

=item [Description => Str]

=item [DisplayName => Str]

=item [Filter => L<Paws::CustomerProfiles::Filter>]

=item [Tags => L<Paws::CustomerProfiles::TagMap>]


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::CreateCalculatedAttributeDefinition>

Returns: a L<Paws::CustomerProfiles::CreateCalculatedAttributeDefinitionResponse> instance

Creates a new calculated attribute definition. After creation, new
object data ingested into Customer Profiles will be included in the
calculated attribute, which can be retrieved for a profile using the
GetCalculatedAttributeForProfile
(https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_GetCalculatedAttributeForProfile.html)
API. Defining a calculated attribute makes it available for all
profiles within a domain. Each calculated attribute can only reference
one C<ObjectType> and at most, two fields from that C<ObjectType>.


=head2 CreateDomain

=over

=item DefaultExpirationDays => Int

=item DomainName => Str

=item [DeadLetterQueueUrl => Str]

=item [DefaultEncryptionKey => Str]

=item [Matching => L<Paws::CustomerProfiles::MatchingRequest>]

=item [RuleBasedMatching => L<Paws::CustomerProfiles::RuleBasedMatchingRequest>]

=item [Tags => L<Paws::CustomerProfiles::TagMap>]


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::CreateDomain>

Returns: a L<Paws::CustomerProfiles::CreateDomainResponse> instance

Creates a domain, which is a container for all customer data, such as
customer profile attributes, object types, profile keys, and encryption
keys. You can create multiple domains, and each domain can have
multiple third-party integrations.

Each Amazon Connect instance can be associated with only one domain.
Multiple Amazon Connect instances can be associated with one domain.

Use this API or UpdateDomain
(https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_UpdateDomain.html)
to enable identity resolution
(https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_GetMatches.html):
set C<Matching> to true.

To prevent cross-service impersonation when you call this API, see
Cross-service confused deputy prevention
(https://docs.aws.amazon.com/connect/latest/adminguide/cross-service-confused-deputy-prevention.html)
for sample policies that you should apply.

It is not possible to associate a Customer Profiles domain with an
Amazon Connect Instance directly from the API. If you would like to
create a domain and associate a Customer Profiles domain, use the
Amazon Connect admin website. For more information, see Enable Customer
Profiles
(https://docs.aws.amazon.com/connect/latest/adminguide/enable-customer-profiles.html#enable-customer-profiles-step1).

Each Amazon Connect instance can be associated with only one domain.
Multiple Amazon Connect instances can be associated with one domain.


=head2 CreateEventStream

=over

=item DomainName => Str

=item EventStreamName => Str

=item Uri => Str

=item [Tags => L<Paws::CustomerProfiles::TagMap>]


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::CreateEventStream>

Returns: a L<Paws::CustomerProfiles::CreateEventStreamResponse> instance

Creates an event stream, which is a subscription to real-time events,
such as when profiles are created and updated through Amazon Connect
Customer Profiles.

Each event stream can be associated with only one Kinesis Data Stream
destination in the same region and Amazon Web Services account as the
customer profiles domain


=head2 CreateEventTrigger

=over

=item DomainName => Str

=item EventTriggerConditions => ArrayRef[L<Paws::CustomerProfiles::EventTriggerCondition>]

=item EventTriggerName => Str

=item ObjectTypeName => Str

=item [Description => Str]

=item [EventTriggerLimits => L<Paws::CustomerProfiles::EventTriggerLimits>]

=item [SegmentFilter => Str]

=item [Tags => L<Paws::CustomerProfiles::TagMap>]


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::CreateEventTrigger>

Returns: a L<Paws::CustomerProfiles::CreateEventTriggerResponse> instance

Creates an event trigger, which specifies the rules when to perform
action based on customer's ingested data.

Each event stream can be associated with only one integration in the
same region and AWS account as the event stream.


=head2 CreateIntegrationWorkflow

=over

=item DomainName => Str

=item IntegrationConfig => L<Paws::CustomerProfiles::IntegrationConfig>

=item ObjectTypeName => Str

=item RoleArn => Str

=item WorkflowType => Str

=item [Tags => L<Paws::CustomerProfiles::TagMap>]


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::CreateIntegrationWorkflow>

Returns: a L<Paws::CustomerProfiles::CreateIntegrationWorkflowResponse> instance

Creates an integration workflow. An integration workflow is an async
process which ingests historic data and sets up an integration for
ongoing updates. The supported Amazon AppFlow sources are Salesforce,
ServiceNow, and Marketo.


=head2 CreateProfile

=over

=item DomainName => Str

=item [AccountNumber => Str]

=item [AdditionalInformation => Str]

=item [Address => L<Paws::CustomerProfiles::Address>]

=item [Attributes => L<Paws::CustomerProfiles::Attributes>]

=item [BillingAddress => L<Paws::CustomerProfiles::Address>]

=item [BirthDate => Str]

=item [BusinessEmailAddress => Str]

=item [BusinessName => Str]

=item [BusinessPhoneNumber => Str]

=item [EmailAddress => Str]

=item [FirstName => Str]

=item [Gender => Str]

=item [GenderString => Str]

=item [HomePhoneNumber => Str]

=item [LastName => Str]

=item [MailingAddress => L<Paws::CustomerProfiles::Address>]

=item [MiddleName => Str]

=item [MobilePhoneNumber => Str]

=item [PartyType => Str]

=item [PartyTypeString => Str]

=item [PersonalEmailAddress => Str]

=item [PhoneNumber => Str]

=item [ShippingAddress => L<Paws::CustomerProfiles::Address>]


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::CreateProfile>

Returns: a L<Paws::CustomerProfiles::CreateProfileResponse> instance

Creates a standard profile.

A standard profile represents the following attributes for a customer
profile in a domain.


=head2 CreateSegmentDefinition

=over

=item DisplayName => Str

=item DomainName => Str

=item SegmentDefinitionName => Str

=item SegmentGroups => L<Paws::CustomerProfiles::SegmentGroup>

=item [Description => Str]

=item [Tags => L<Paws::CustomerProfiles::TagMap>]


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::CreateSegmentDefinition>

Returns: a L<Paws::CustomerProfiles::CreateSegmentDefinitionResponse> instance

Creates a segment definition associated to the given domain.


=head2 CreateSegmentEstimate

=over

=item DomainName => Str

=item SegmentQuery => L<Paws::CustomerProfiles::SegmentGroupStructure>


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::CreateSegmentEstimate>

Returns: a L<Paws::CustomerProfiles::CreateSegmentEstimateResponse> instance

Creates a segment estimate query.


=head2 CreateSegmentSnapshot

=over

=item DataFormat => Str

=item DomainName => Str

=item SegmentDefinitionName => Str

=item [DestinationUri => Str]

=item [EncryptionKey => Str]

=item [RoleArn => Str]


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::CreateSegmentSnapshot>

Returns: a L<Paws::CustomerProfiles::CreateSegmentSnapshotResponse> instance

Triggers a job to export a segment to a specified destination.


=head2 DeleteCalculatedAttributeDefinition

=over

=item CalculatedAttributeName => Str

=item DomainName => Str


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::DeleteCalculatedAttributeDefinition>

Returns: a L<Paws::CustomerProfiles::DeleteCalculatedAttributeDefinitionResponse> instance

Deletes an existing calculated attribute definition. Note that deleting
a default calculated attribute is possible, however once deleted, you
will be unable to undo that action and will need to recreate it on your
own using the CreateCalculatedAttributeDefinition API if you want it
back.


=head2 DeleteDomain

=over

=item DomainName => Str


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::DeleteDomain>

Returns: a L<Paws::CustomerProfiles::DeleteDomainResponse> instance

Deletes a specific domain and all of its customer data, such as
customer profile attributes and their related objects.


=head2 DeleteEventStream

=over

=item DomainName => Str

=item EventStreamName => Str


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::DeleteEventStream>

Returns: a L<Paws::CustomerProfiles::DeleteEventStreamResponse> instance

Disables and deletes the specified event stream.


=head2 DeleteEventTrigger

=over

=item DomainName => Str

=item EventTriggerName => Str


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::DeleteEventTrigger>

Returns: a L<Paws::CustomerProfiles::DeleteEventTriggerResponse> instance

Disable and deletes the Event Trigger.

You cannot delete an Event Trigger with an active Integration
associated.


=head2 DeleteIntegration

=over

=item DomainName => Str

=item Uri => Str


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::DeleteIntegration>

Returns: a L<Paws::CustomerProfiles::DeleteIntegrationResponse> instance

Removes an integration from a specific domain.


=head2 DeleteProfile

=over

=item DomainName => Str

=item ProfileId => Str


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::DeleteProfile>

Returns: a L<Paws::CustomerProfiles::DeleteProfileResponse> instance

Deletes the standard customer profile and all data pertaining to the
profile.


=head2 DeleteProfileKey

=over

=item DomainName => Str

=item KeyName => Str

=item ProfileId => Str

=item Values => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::DeleteProfileKey>

Returns: a L<Paws::CustomerProfiles::DeleteProfileKeyResponse> instance

Removes a searchable key from a customer profile.


=head2 DeleteProfileObject

=over

=item DomainName => Str

=item ObjectTypeName => Str

=item ProfileId => Str

=item ProfileObjectUniqueKey => Str


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::DeleteProfileObject>

Returns: a L<Paws::CustomerProfiles::DeleteProfileObjectResponse> instance

Removes an object associated with a profile of a given
ProfileObjectType.


=head2 DeleteProfileObjectType

=over

=item DomainName => Str

=item ObjectTypeName => Str


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::DeleteProfileObjectType>

Returns: a L<Paws::CustomerProfiles::DeleteProfileObjectTypeResponse> instance

Removes a ProfileObjectType from a specific domain as well as removes
all the ProfileObjects of that type. It also disables integrations from
this specific ProfileObjectType. In addition, it scrubs all of the
fields of the standard profile that were populated from this
ProfileObjectType.


=head2 DeleteSegmentDefinition

=over

=item DomainName => Str

=item SegmentDefinitionName => Str


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::DeleteSegmentDefinition>

Returns: a L<Paws::CustomerProfiles::DeleteSegmentDefinitionResponse> instance

Deletes a segment definition from the domain.


=head2 DeleteWorkflow

=over

=item DomainName => Str

=item WorkflowId => Str


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::DeleteWorkflow>

Returns: a L<Paws::CustomerProfiles::DeleteWorkflowResponse> instance

Deletes the specified workflow and all its corresponding resources.
This is an async process.


=head2 DetectProfileObjectType

=over

=item DomainName => Str

=item Objects => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::DetectProfileObjectType>

Returns: a L<Paws::CustomerProfiles::DetectProfileObjectTypeResponse> instance

The process of detecting profile object type mapping by using given
objects.


=head2 GetAutoMergingPreview

=over

=item ConflictResolution => L<Paws::CustomerProfiles::ConflictResolution>

=item Consolidation => L<Paws::CustomerProfiles::Consolidation>

=item DomainName => Str

=item [MinAllowedConfidenceScoreForMerging => Num]


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::GetAutoMergingPreview>

Returns: a L<Paws::CustomerProfiles::GetAutoMergingPreviewResponse> instance

Tests the auto-merging settings of your Identity Resolution Job without
merging your data. It randomly selects a sample of matching groups from
the existing matching results, and applies the automerging settings
that you provided. You can then view the number of profiles in the
sample, the number of matches, and the number of profiles identified to
be merged. This enables you to evaluate the accuracy of the attributes
in your matching list.

You can't view which profiles are matched and would be merged.

We strongly recommend you use this API to do a dry run of the
automerging process before running the Identity Resolution Job. Include
B<at least> two matching attributes. If your matching list includes too
few attributes (such as only C<FirstName> or only C<LastName>), there
may be a large number of matches. This increases the chances of
erroneous merges.


=head2 GetCalculatedAttributeDefinition

=over

=item CalculatedAttributeName => Str

=item DomainName => Str


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::GetCalculatedAttributeDefinition>

Returns: a L<Paws::CustomerProfiles::GetCalculatedAttributeDefinitionResponse> instance

Provides more information on a calculated attribute definition for
Customer Profiles.


=head2 GetCalculatedAttributeForProfile

=over

=item CalculatedAttributeName => Str

=item DomainName => Str

=item ProfileId => Str


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::GetCalculatedAttributeForProfile>

Returns: a L<Paws::CustomerProfiles::GetCalculatedAttributeForProfileResponse> instance

Retrieve a calculated attribute for a customer profile.


=head2 GetDomain

=over

=item DomainName => Str


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::GetDomain>

Returns: a L<Paws::CustomerProfiles::GetDomainResponse> instance

Returns information about a specific domain.


=head2 GetEventStream

=over

=item DomainName => Str

=item EventStreamName => Str


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::GetEventStream>

Returns: a L<Paws::CustomerProfiles::GetEventStreamResponse> instance

Returns information about the specified event stream in a specific
domain.


=head2 GetEventTrigger

=over

=item DomainName => Str

=item EventTriggerName => Str


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::GetEventTrigger>

Returns: a L<Paws::CustomerProfiles::GetEventTriggerResponse> instance

Get a specific Event Trigger from the domain.


=head2 GetIdentityResolutionJob

=over

=item DomainName => Str

=item JobId => Str


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::GetIdentityResolutionJob>

Returns: a L<Paws::CustomerProfiles::GetIdentityResolutionJobResponse> instance

Returns information about an Identity Resolution Job in a specific
domain.

Identity Resolution Jobs are set up using the Amazon Connect admin
console. For more information, see Use Identity Resolution to
consolidate similar profiles
(https://docs.aws.amazon.com/connect/latest/adminguide/use-identity-resolution.html).


=head2 GetIntegration

=over

=item DomainName => Str

=item Uri => Str


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::GetIntegration>

Returns: a L<Paws::CustomerProfiles::GetIntegrationResponse> instance

Returns an integration for a domain.


=head2 GetMatches

=over

=item DomainName => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::GetMatches>

Returns: a L<Paws::CustomerProfiles::GetMatchesResponse> instance

Before calling this API, use CreateDomain
(https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_CreateDomain.html)
or UpdateDomain
(https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_UpdateDomain.html)
to enable identity resolution: set C<Matching> to true.

GetMatches returns potentially matching profiles, based on the results
of the latest run of a machine learning process.

The process of matching duplicate profiles. If C<Matching> = C<true>,
Amazon Connect Customer Profiles starts a weekly batch process called
Identity Resolution Job. If you do not specify a date and time for
Identity Resolution Job to run, by default it runs every Saturday at
12AM UTC to detect duplicate profiles in your domains.

After the Identity Resolution Job completes, use the GetMatches
(https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_GetMatches.html)
API to return and review the results. Or, if you have configured
C<ExportingConfig> in the C<MatchingRequest>, you can download the
results from S3.

Amazon Connect uses the following profile attributes to identify
matches:

=over

=item *

PhoneNumber

=item *

HomePhoneNumber

=item *

BusinessPhoneNumber

=item *

MobilePhoneNumber

=item *

EmailAddress

=item *

PersonalEmailAddress

=item *

BusinessEmailAddress

=item *

FullName

=back

For example, two or more profilesE<mdash>with spelling mistakes such as
B<John Doe> and B<Jhn Doe>, or different casing email addresses such as
B<JOHN_DOE@ANYCOMPANY.COM> and B<johndoe@anycompany.com>, or different
phone number formats such as B<555-010-0000> and
B<+1-555-010-0000>E<mdash>can be detected as belonging to the same
customer B<John Doe> and merged into a unified profile.


=head2 GetProfileObjectType

=over

=item DomainName => Str

=item ObjectTypeName => Str


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::GetProfileObjectType>

Returns: a L<Paws::CustomerProfiles::GetProfileObjectTypeResponse> instance

Returns the object types for a specific domain.


=head2 GetProfileObjectTypeTemplate

=over

=item TemplateId => Str


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::GetProfileObjectTypeTemplate>

Returns: a L<Paws::CustomerProfiles::GetProfileObjectTypeTemplateResponse> instance

Returns the template information for a specific object type.

A template is a predefined ProfileObjectType, such as
E<ldquo>Salesforce-AccountE<rdquo> or
E<ldquo>Salesforce-Contact.E<rdquo> When a user sends a ProfileObject,
using the PutProfileObject API, with an ObjectTypeName that matches one
of the TemplateIds, it uses the mappings from the template.


=head2 GetSegmentDefinition

=over

=item DomainName => Str

=item SegmentDefinitionName => Str


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::GetSegmentDefinition>

Returns: a L<Paws::CustomerProfiles::GetSegmentDefinitionResponse> instance

Gets a segment definition from the domain.


=head2 GetSegmentEstimate

=over

=item DomainName => Str

=item EstimateId => Str


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::GetSegmentEstimate>

Returns: a L<Paws::CustomerProfiles::GetSegmentEstimateResponse> instance

Gets the result of a segment estimate query.


=head2 GetSegmentMembership

=over

=item DomainName => Str

=item ProfileIds => ArrayRef[Str|Undef]

=item SegmentDefinitionName => Str


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::GetSegmentMembership>

Returns: a L<Paws::CustomerProfiles::GetSegmentMembershipResponse> instance

Determines if the given profiles are within a segment.


=head2 GetSegmentSnapshot

=over

=item DomainName => Str

=item SegmentDefinitionName => Str

=item SnapshotId => Str


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::GetSegmentSnapshot>

Returns: a L<Paws::CustomerProfiles::GetSegmentSnapshotResponse> instance

Retrieve the latest status of a segment snapshot.


=head2 GetSimilarProfiles

=over

=item DomainName => Str

=item MatchType => Str

=item SearchKey => Str

=item SearchValue => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::GetSimilarProfiles>

Returns: a L<Paws::CustomerProfiles::GetSimilarProfilesResponse> instance

Returns a set of profiles that belong to the same matching group using
the C<matchId> or C<profileId>. You can also specify the type of
matching that you want for finding similar profiles using either
C<RULE_BASED_MATCHING> or C<ML_BASED_MATCHING>.


=head2 GetWorkflow

=over

=item DomainName => Str

=item WorkflowId => Str


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::GetWorkflow>

Returns: a L<Paws::CustomerProfiles::GetWorkflowResponse> instance

Get details of specified workflow.


=head2 GetWorkflowSteps

=over

=item DomainName => Str

=item WorkflowId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::GetWorkflowSteps>

Returns: a L<Paws::CustomerProfiles::GetWorkflowStepsResponse> instance

Get granular list of steps in workflow.


=head2 ListAccountIntegrations

=over

=item Uri => Str

=item [IncludeHidden => Bool]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::ListAccountIntegrations>

Returns: a L<Paws::CustomerProfiles::ListAccountIntegrationsResponse> instance

Lists all of the integrations associated to a specific URI in the AWS
account.


=head2 ListCalculatedAttributeDefinitions

=over

=item DomainName => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::ListCalculatedAttributeDefinitions>

Returns: a L<Paws::CustomerProfiles::ListCalculatedAttributeDefinitionsResponse> instance

Lists calculated attribute definitions for Customer Profiles


=head2 ListCalculatedAttributesForProfile

=over

=item DomainName => Str

=item ProfileId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::ListCalculatedAttributesForProfile>

Returns: a L<Paws::CustomerProfiles::ListCalculatedAttributesForProfileResponse> instance

Retrieve a list of calculated attributes for a customer profile.


=head2 ListDomains

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::ListDomains>

Returns: a L<Paws::CustomerProfiles::ListDomainsResponse> instance

Returns a list of all the domains for an AWS account that have been
created.


=head2 ListEventStreams

=over

=item DomainName => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::ListEventStreams>

Returns: a L<Paws::CustomerProfiles::ListEventStreamsResponse> instance

Returns a list of all the event streams in a specific domain.


=head2 ListEventTriggers

=over

=item DomainName => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::ListEventTriggers>

Returns: a L<Paws::CustomerProfiles::ListEventTriggersResponse> instance

List all Event Triggers under a domain.


=head2 ListIdentityResolutionJobs

=over

=item DomainName => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::ListIdentityResolutionJobs>

Returns: a L<Paws::CustomerProfiles::ListIdentityResolutionJobsResponse> instance

Lists all of the Identity Resolution Jobs in your domain. The response
sorts the list by C<JobStartTime>.


=head2 ListIntegrations

=over

=item DomainName => Str

=item [IncludeHidden => Bool]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::ListIntegrations>

Returns: a L<Paws::CustomerProfiles::ListIntegrationsResponse> instance

Lists all of the integrations in your domain.


=head2 ListObjectTypeAttributes

=over

=item DomainName => Str

=item ObjectTypeName => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::ListObjectTypeAttributes>

Returns: a L<Paws::CustomerProfiles::ListObjectTypeAttributesResponse> instance

Fetch the possible attribute values given the attribute name.


=head2 ListProfileAttributeValues

=over

=item AttributeName => Str

=item DomainName => Str


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::ListProfileAttributeValues>

Returns: a L<Paws::CustomerProfiles::ProfileAttributeValuesResponse> instance

Fetch the possible attribute values given the attribute name.


=head2 ListProfileObjects

=over

=item DomainName => Str

=item ObjectTypeName => Str

=item ProfileId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ObjectFilter => L<Paws::CustomerProfiles::ObjectFilter>]


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::ListProfileObjects>

Returns: a L<Paws::CustomerProfiles::ListProfileObjectsResponse> instance

Returns a list of objects associated with a profile of a given
ProfileObjectType.


=head2 ListProfileObjectTypes

=over

=item DomainName => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::ListProfileObjectTypes>

Returns: a L<Paws::CustomerProfiles::ListProfileObjectTypesResponse> instance

Lists all of the templates available within the service.


=head2 ListProfileObjectTypeTemplates

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::ListProfileObjectTypeTemplates>

Returns: a L<Paws::CustomerProfiles::ListProfileObjectTypeTemplatesResponse> instance

Lists all of the template information for object types.


=head2 ListRuleBasedMatches

=over

=item DomainName => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::ListRuleBasedMatches>

Returns: a L<Paws::CustomerProfiles::ListRuleBasedMatchesResponse> instance

Returns a set of C<MatchIds> that belong to the given domain.


=head2 ListSegmentDefinitions

=over

=item DomainName => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::ListSegmentDefinitions>

Returns: a L<Paws::CustomerProfiles::ListSegmentDefinitionsResponse> instance

Lists all segment definitions under a domain.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::ListTagsForResource>

Returns: a L<Paws::CustomerProfiles::ListTagsForResourceResponse> instance

Displays the tags associated with an Amazon Connect Customer Profiles
resource. In Connect Customer Profiles, domains, profile object types,
and integrations can be tagged.


=head2 ListWorkflows

=over

=item DomainName => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [QueryEndDate => Str]

=item [QueryStartDate => Str]

=item [Status => Str]

=item [WorkflowType => Str]


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::ListWorkflows>

Returns: a L<Paws::CustomerProfiles::ListWorkflowsResponse> instance

Query to list all workflows.


=head2 MergeProfiles

=over

=item DomainName => Str

=item MainProfileId => Str

=item ProfileIdsToBeMerged => ArrayRef[Str|Undef]

=item [FieldSourceProfileIds => L<Paws::CustomerProfiles::FieldSourceProfileIds>]


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::MergeProfiles>

Returns: a L<Paws::CustomerProfiles::MergeProfilesResponse> instance

Runs an AWS Lambda job that does the following:

=over

=item 1.

All the profileKeys in the C<ProfileToBeMerged> will be moved to the
main profile.

=item 2.

All the objects in the C<ProfileToBeMerged> will be moved to the main
profile.

=item 3.

All the C<ProfileToBeMerged> will be deleted at the end.

=item 4.

All the profileKeys in the C<ProfileIdsToBeMerged> will be moved to the
main profile.

=item 5.

Standard fields are merged as follows:

=over

=item 1.

Fields are always "union"-ed if there are no conflicts in standard
fields or attributeKeys.

=item 2.

When there are conflicting fields:

=over

=item 1.

If no C<SourceProfileIds> entry is specified, the main Profile value is
always taken.

=item 2.

If a C<SourceProfileIds> entry is specified, the specified profileId is
always taken, even if it is a NULL value.

=back

=back

=back

You can use MergeProfiles together with GetMatches
(https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_GetMatches.html),
which returns potentially matching profiles, or use it with the results
of another matching system. After profiles have been merged, they
cannot be separated (unmerged).


=head2 PutIntegration

=over

=item DomainName => Str

=item [EventTriggerNames => ArrayRef[Str|Undef]]

=item [FlowDefinition => L<Paws::CustomerProfiles::FlowDefinition>]

=item [ObjectTypeName => Str]

=item [ObjectTypeNames => L<Paws::CustomerProfiles::ObjectTypeNames>]

=item [RoleArn => Str]

=item [Tags => L<Paws::CustomerProfiles::TagMap>]

=item [Uri => Str]


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::PutIntegration>

Returns: a L<Paws::CustomerProfiles::PutIntegrationResponse> instance

Adds an integration between the service and a third-party service,
which includes Amazon AppFlow and Amazon Connect.

An integration can belong to only one domain.

To add or remove tags on an existing Integration, see TagResource
(https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_TagResource.html)/
UntagResource
(https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_UntagResource.html).


=head2 PutProfileObject

=over

=item DomainName => Str

=item Object => Str

=item ObjectTypeName => Str


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::PutProfileObject>

Returns: a L<Paws::CustomerProfiles::PutProfileObjectResponse> instance

Adds additional objects to customer profiles of a given ObjectType.

When adding a specific profile object, like a Contact Record, an
inferred profile can get created if it is not mapped to an existing
profile. The resulting profile will only have a phone number populated
in the standard ProfileObject. Any additional Contact Records with the
same phone number will be mapped to the same inferred profile.

When a ProfileObject is created and if a ProfileObjectType already
exists for the ProfileObject, it will provide data to a standard
profile depending on the ProfileObjectType definition.

PutProfileObject needs an ObjectType, which can be created using
PutProfileObjectType.


=head2 PutProfileObjectType

=over

=item Description => Str

=item DomainName => Str

=item ObjectTypeName => Str

=item [AllowProfileCreation => Bool]

=item [EncryptionKey => Str]

=item [ExpirationDays => Int]

=item [Fields => L<Paws::CustomerProfiles::FieldMap>]

=item [Keys => L<Paws::CustomerProfiles::KeyMap>]

=item [MaxProfileObjectCount => Int]

=item [SourceLastUpdatedTimestampFormat => Str]

=item [Tags => L<Paws::CustomerProfiles::TagMap>]

=item [TemplateId => Str]


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::PutProfileObjectType>

Returns: a L<Paws::CustomerProfiles::PutProfileObjectTypeResponse> instance

Defines a ProfileObjectType.

To add or remove tags on an existing ObjectType, see TagResource
(https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_TagResource.html)/UntagResource
(https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_UntagResource.html).


=head2 SearchProfiles

=over

=item DomainName => Str

=item KeyName => Str

=item Values => ArrayRef[Str|Undef]

=item [AdditionalSearchKeys => ArrayRef[L<Paws::CustomerProfiles::AdditionalSearchKey>]]

=item [LogicalOperator => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::SearchProfiles>

Returns: a L<Paws::CustomerProfiles::SearchProfilesResponse> instance

Searches for profiles within a specific domain using one or more
predefined search keys (e.g., _fullName, _phone, _email, _account,
etc.) and/or custom-defined search keys. A search key is a data type
pair that consists of a C<KeyName> and C<Values> list.

This operation supports searching for profiles with a minimum of 1
key-value(s) pair and up to 5 key-value(s) pairs using either C<AND> or
C<OR> logic.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::CustomerProfiles::TagMap>


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::TagResource>

Returns: a L<Paws::CustomerProfiles::TagResourceResponse> instance

Assigns one or more tags (key-value pairs) to the specified Amazon
Connect Customer Profiles resource. Tags can help you organize and
categorize your resources. You can also use them to scope user
permissions by granting a user permission to access or change only
resources with certain tag values. In Connect Customer Profiles,
domains, profile object types, and integrations can be tagged.

Tags don't have any semantic meaning to AWS and are interpreted
strictly as strings of characters.

You can use the TagResource action with a resource that already has
tags. If you specify a new tag key, this tag is appended to the list of
tags associated with the resource. If you specify a tag key that is
already associated with the resource, the new tag value that you
specify replaces the previous value for that tag.

You can associate as many as 50 tags with a resource.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::UntagResource>

Returns: a L<Paws::CustomerProfiles::UntagResourceResponse> instance

Removes one or more tags from the specified Amazon Connect Customer
Profiles resource. In Connect Customer Profiles, domains, profile
object types, and integrations can be tagged.


=head2 UpdateCalculatedAttributeDefinition

=over

=item CalculatedAttributeName => Str

=item DomainName => Str

=item [Conditions => L<Paws::CustomerProfiles::Conditions>]

=item [Description => Str]

=item [DisplayName => Str]


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::UpdateCalculatedAttributeDefinition>

Returns: a L<Paws::CustomerProfiles::UpdateCalculatedAttributeDefinitionResponse> instance

Updates an existing calculated attribute definition. When updating the
Conditions, note that increasing the date range of a calculated
attribute will not trigger inclusion of historical data greater than
the current date range.


=head2 UpdateDomain

=over

=item DomainName => Str

=item [DeadLetterQueueUrl => Str]

=item [DefaultEncryptionKey => Str]

=item [DefaultExpirationDays => Int]

=item [Matching => L<Paws::CustomerProfiles::MatchingRequest>]

=item [RuleBasedMatching => L<Paws::CustomerProfiles::RuleBasedMatchingRequest>]

=item [Tags => L<Paws::CustomerProfiles::TagMap>]


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::UpdateDomain>

Returns: a L<Paws::CustomerProfiles::UpdateDomainResponse> instance

Updates the properties of a domain, including creating or selecting a
dead letter queue or an encryption key.

After a domain is created, the name canE<rsquo>t be changed.

Use this API or CreateDomain
(https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_CreateDomain.html)
to enable identity resolution
(https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_GetMatches.html):
set C<Matching> to true.

To prevent cross-service impersonation when you call this API, see
Cross-service confused deputy prevention
(https://docs.aws.amazon.com/connect/latest/adminguide/cross-service-confused-deputy-prevention.html)
for sample policies that you should apply.

To add or remove tags on an existing Domain, see TagResource
(https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_TagResource.html)/UntagResource
(https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_UntagResource.html).


=head2 UpdateEventTrigger

=over

=item DomainName => Str

=item EventTriggerName => Str

=item [Description => Str]

=item [EventTriggerConditions => ArrayRef[L<Paws::CustomerProfiles::EventTriggerCondition>]]

=item [EventTriggerLimits => L<Paws::CustomerProfiles::EventTriggerLimits>]

=item [ObjectTypeName => Str]

=item [SegmentFilter => Str]


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::UpdateEventTrigger>

Returns: a L<Paws::CustomerProfiles::UpdateEventTriggerResponse> instance

Update the properties of an Event Trigger.


=head2 UpdateProfile

=over

=item DomainName => Str

=item ProfileId => Str

=item [AccountNumber => Str]

=item [AdditionalInformation => Str]

=item [Address => L<Paws::CustomerProfiles::UpdateAddress>]

=item [Attributes => L<Paws::CustomerProfiles::UpdateAttributes>]

=item [BillingAddress => L<Paws::CustomerProfiles::UpdateAddress>]

=item [BirthDate => Str]

=item [BusinessEmailAddress => Str]

=item [BusinessName => Str]

=item [BusinessPhoneNumber => Str]

=item [EmailAddress => Str]

=item [FirstName => Str]

=item [Gender => Str]

=item [GenderString => Str]

=item [HomePhoneNumber => Str]

=item [LastName => Str]

=item [MailingAddress => L<Paws::CustomerProfiles::UpdateAddress>]

=item [MiddleName => Str]

=item [MobilePhoneNumber => Str]

=item [PartyType => Str]

=item [PartyTypeString => Str]

=item [PersonalEmailAddress => Str]

=item [PhoneNumber => Str]

=item [ShippingAddress => L<Paws::CustomerProfiles::UpdateAddress>]


=back

Each argument is described in detail in: L<Paws::CustomerProfiles::UpdateProfile>

Returns: a L<Paws::CustomerProfiles::UpdateProfileResponse> instance

Updates the properties of a profile. The ProfileId is required for
updating a customer profile.

When calling the UpdateProfile API, specifying an empty string value
means that any existing value will be removed. Not specifying a string
value means that any value already there will be kept.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 GetAllSimilarProfiles(sub { },DomainName => Str, MatchType => Str, SearchKey => Str, SearchValue => Str, [MaxResults => Int, NextToken => Str])

=head2 GetAllSimilarProfiles(DomainName => Str, MatchType => Str, SearchKey => Str, SearchValue => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ProfileIds, passing the object as the first parameter, and the string 'ProfileIds' as the second parameter 

If not, it will return a a L<Paws::CustomerProfiles::GetSimilarProfilesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllEventStreams(sub { },DomainName => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllEventStreams(DomainName => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Items, passing the object as the first parameter, and the string 'Items' as the second parameter 

If not, it will return a a L<Paws::CustomerProfiles::ListEventStreamsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllEventTriggers(sub { },DomainName => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllEventTriggers(DomainName => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Items, passing the object as the first parameter, and the string 'Items' as the second parameter 

If not, it will return a a L<Paws::CustomerProfiles::ListEventTriggersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllObjectTypeAttributes(sub { },DomainName => Str, ObjectTypeName => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllObjectTypeAttributes(DomainName => Str, ObjectTypeName => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Items, passing the object as the first parameter, and the string 'Items' as the second parameter 

If not, it will return a a L<Paws::CustomerProfiles::ListObjectTypeAttributesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllRuleBasedMatches(sub { },DomainName => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllRuleBasedMatches(DomainName => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - MatchIds, passing the object as the first parameter, and the string 'MatchIds' as the second parameter 

If not, it will return a a L<Paws::CustomerProfiles::ListRuleBasedMatchesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSegmentDefinitions(sub { },DomainName => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllSegmentDefinitions(DomainName => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Items, passing the object as the first parameter, and the string 'Items' as the second parameter 

If not, it will return a a L<Paws::CustomerProfiles::ListSegmentDefinitionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

