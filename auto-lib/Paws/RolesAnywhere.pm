package Paws::RolesAnywhere;
  use Moose;
  sub service { 'rolesanywhere' }
  sub signing_name { 'rolesanywhere' }
  sub version { '2018-05-10' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RolesAnywhere::CreateProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTrustAnchor {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RolesAnywhere::CreateTrustAnchor', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAttributeMapping {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RolesAnywhere::DeleteAttributeMapping', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCrl {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RolesAnywhere::DeleteCrl', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RolesAnywhere::DeleteProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTrustAnchor {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RolesAnywhere::DeleteTrustAnchor', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisableCrl {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RolesAnywhere::DisableCrl', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisableProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RolesAnywhere::DisableProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisableTrustAnchor {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RolesAnywhere::DisableTrustAnchor', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableCrl {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RolesAnywhere::EnableCrl', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RolesAnywhere::EnableProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableTrustAnchor {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RolesAnywhere::EnableTrustAnchor', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCrl {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RolesAnywhere::GetCrl', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RolesAnywhere::GetProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSubject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RolesAnywhere::GetSubject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTrustAnchor {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RolesAnywhere::GetTrustAnchor', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ImportCrl {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RolesAnywhere::ImportCrl', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCrls {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RolesAnywhere::ListCrls', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListProfiles {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RolesAnywhere::ListProfiles', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSubjects {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RolesAnywhere::ListSubjects', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RolesAnywhere::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTrustAnchors {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RolesAnywhere::ListTrustAnchors', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutAttributeMapping {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RolesAnywhere::PutAttributeMapping', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutNotificationSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RolesAnywhere::PutNotificationSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ResetNotificationSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RolesAnywhere::ResetNotificationSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RolesAnywhere::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RolesAnywhere::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateCrl {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RolesAnywhere::UpdateCrl', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RolesAnywhere::UpdateProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateTrustAnchor {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RolesAnywhere::UpdateTrustAnchor', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllCrls {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListCrls(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListCrls(@_, nextToken => $next_result->nextToken);
        push @{ $result->crls }, @{ $next_result->crls };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'crls') foreach (@{ $result->crls });
        $result = $self->ListCrls(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'crls') foreach (@{ $result->crls });
    }

    return undef
  }
  sub ListAllProfiles {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListProfiles(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListProfiles(@_, nextToken => $next_result->nextToken);
        push @{ $result->profiles }, @{ $next_result->profiles };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'profiles') foreach (@{ $result->profiles });
        $result = $self->ListProfiles(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'profiles') foreach (@{ $result->profiles });
    }

    return undef
  }
  sub ListAllSubjects {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSubjects(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListSubjects(@_, nextToken => $next_result->nextToken);
        push @{ $result->subjects }, @{ $next_result->subjects };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'subjects') foreach (@{ $result->subjects });
        $result = $self->ListSubjects(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'subjects') foreach (@{ $result->subjects });
    }

    return undef
  }
  sub ListAllTrustAnchors {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTrustAnchors(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListTrustAnchors(@_, nextToken => $next_result->nextToken);
        push @{ $result->trustAnchors }, @{ $next_result->trustAnchors };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'trustAnchors') foreach (@{ $result->trustAnchors });
        $result = $self->ListTrustAnchors(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'trustAnchors') foreach (@{ $result->trustAnchors });
    }

    return undef
  }


  sub operations { qw/CreateProfile CreateTrustAnchor DeleteAttributeMapping DeleteCrl DeleteProfile DeleteTrustAnchor DisableCrl DisableProfile DisableTrustAnchor EnableCrl EnableProfile EnableTrustAnchor GetCrl GetProfile GetSubject GetTrustAnchor ImportCrl ListCrls ListProfiles ListSubjects ListTagsForResource ListTrustAnchors PutAttributeMapping PutNotificationSettings ResetNotificationSettings TagResource UntagResource UpdateCrl UpdateProfile UpdateTrustAnchor / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::RolesAnywhere - Perl Interface to AWS IAM Roles Anywhere

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('RolesAnywhere');
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

Identity and Access Management Roles Anywhere provides a secure way for
your workloads such as servers, containers, and applications that run
outside of Amazon Web Services to obtain temporary Amazon Web Services
credentials. Your workloads can use the same IAM policies and roles you
have for native Amazon Web Services applications to access Amazon Web
Services resources. Using IAM Roles Anywhere eliminates the need to
manage long-term credentials for workloads running outside of Amazon
Web Services.

To use IAM Roles Anywhere, your workloads must use X.509 certificates
issued by their certificate authority (CA). You register the CA with
IAM Roles Anywhere as a trust anchor to establish trust between your
public key infrastructure (PKI) and IAM Roles Anywhere. If you don't
manage your own PKI system, you can use Private Certificate Authority
to create a CA and then use that to establish trust with IAM Roles
Anywhere.

This guide describes the IAM Roles Anywhere operations that you can
call programmatically. For more information about IAM Roles Anywhere,
see the IAM Roles Anywhere User Guide
(https://docs.aws.amazon.com/rolesanywhere/latest/userguide/introduction.html).

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rolesanywhere-2018-05-10>


=head1 METHODS

=head2 CreateProfile

=over

=item Name => Str

=item RoleArns => ArrayRef[Str|Undef]

=item [AcceptRoleSessionName => Bool]

=item [DurationSeconds => Int]

=item [Enabled => Bool]

=item [ManagedPolicyArns => ArrayRef[Str|Undef]]

=item [RequireInstanceProperties => Bool]

=item [SessionPolicy => Str]

=item [Tags => ArrayRef[L<Paws::RolesAnywhere::Tag>]]


=back

Each argument is described in detail in: L<Paws::RolesAnywhere::CreateProfile>

Returns: a L<Paws::RolesAnywhere::ProfileDetailResponse> instance

Creates a I<profile>, a list of the roles that Roles Anywhere service
is trusted to assume. You use profiles to intersect permissions with
IAM managed policies.

B<Required permissions: > C<rolesanywhere:CreateProfile>.


=head2 CreateTrustAnchor

=over

=item Name => Str

=item Source => L<Paws::RolesAnywhere::Source>

=item [Enabled => Bool]

=item [NotificationSettings => ArrayRef[L<Paws::RolesAnywhere::NotificationSetting>]]

=item [Tags => ArrayRef[L<Paws::RolesAnywhere::Tag>]]


=back

Each argument is described in detail in: L<Paws::RolesAnywhere::CreateTrustAnchor>

Returns: a L<Paws::RolesAnywhere::TrustAnchorDetailResponse> instance

Creates a trust anchor to establish trust between IAM Roles Anywhere
and your certificate authority (CA). You can define a trust anchor as a
reference to an Private Certificate Authority (Private CA) or by
uploading a CA certificate. Your Amazon Web Services workloads can
authenticate with the trust anchor using certificates issued by the CA
in exchange for temporary Amazon Web Services credentials.

B<Required permissions: > C<rolesanywhere:CreateTrustAnchor>.


=head2 DeleteAttributeMapping

=over

=item CertificateField => Str

=item ProfileId => Str

=item [Specifiers => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::RolesAnywhere::DeleteAttributeMapping>

Returns: a L<Paws::RolesAnywhere::DeleteAttributeMappingResponse> instance

Delete an entry from the attribute mapping rules enforced by a given
profile.


=head2 DeleteCrl

=over

=item CrlId => Str


=back

Each argument is described in detail in: L<Paws::RolesAnywhere::DeleteCrl>

Returns: a L<Paws::RolesAnywhere::CrlDetailResponse> instance

Deletes a certificate revocation list (CRL).

B<Required permissions: > C<rolesanywhere:DeleteCrl>.


=head2 DeleteProfile

=over

=item ProfileId => Str


=back

Each argument is described in detail in: L<Paws::RolesAnywhere::DeleteProfile>

Returns: a L<Paws::RolesAnywhere::ProfileDetailResponse> instance

Deletes a profile.

B<Required permissions: > C<rolesanywhere:DeleteProfile>.


=head2 DeleteTrustAnchor

=over

=item TrustAnchorId => Str


=back

Each argument is described in detail in: L<Paws::RolesAnywhere::DeleteTrustAnchor>

Returns: a L<Paws::RolesAnywhere::TrustAnchorDetailResponse> instance

Deletes a trust anchor.

B<Required permissions: > C<rolesanywhere:DeleteTrustAnchor>.


=head2 DisableCrl

=over

=item CrlId => Str


=back

Each argument is described in detail in: L<Paws::RolesAnywhere::DisableCrl>

Returns: a L<Paws::RolesAnywhere::CrlDetailResponse> instance

Disables a certificate revocation list (CRL).

B<Required permissions: > C<rolesanywhere:DisableCrl>.


=head2 DisableProfile

=over

=item ProfileId => Str


=back

Each argument is described in detail in: L<Paws::RolesAnywhere::DisableProfile>

Returns: a L<Paws::RolesAnywhere::ProfileDetailResponse> instance

Disables a profile. When disabled, temporary credential requests with
this profile fail.

B<Required permissions: > C<rolesanywhere:DisableProfile>.


=head2 DisableTrustAnchor

=over

=item TrustAnchorId => Str


=back

Each argument is described in detail in: L<Paws::RolesAnywhere::DisableTrustAnchor>

Returns: a L<Paws::RolesAnywhere::TrustAnchorDetailResponse> instance

Disables a trust anchor. When disabled, temporary credential requests
specifying this trust anchor are unauthorized.

B<Required permissions: > C<rolesanywhere:DisableTrustAnchor>.


=head2 EnableCrl

=over

=item CrlId => Str


=back

Each argument is described in detail in: L<Paws::RolesAnywhere::EnableCrl>

Returns: a L<Paws::RolesAnywhere::CrlDetailResponse> instance

Enables a certificate revocation list (CRL). When enabled, certificates
stored in the CRL are unauthorized to receive session credentials.

B<Required permissions: > C<rolesanywhere:EnableCrl>.


=head2 EnableProfile

=over

=item ProfileId => Str


=back

Each argument is described in detail in: L<Paws::RolesAnywhere::EnableProfile>

Returns: a L<Paws::RolesAnywhere::ProfileDetailResponse> instance

Enables temporary credential requests for a profile.

B<Required permissions: > C<rolesanywhere:EnableProfile>.


=head2 EnableTrustAnchor

=over

=item TrustAnchorId => Str


=back

Each argument is described in detail in: L<Paws::RolesAnywhere::EnableTrustAnchor>

Returns: a L<Paws::RolesAnywhere::TrustAnchorDetailResponse> instance

Enables a trust anchor. When enabled, certificates in the trust anchor
chain are authorized for trust validation.

B<Required permissions: > C<rolesanywhere:EnableTrustAnchor>.


=head2 GetCrl

=over

=item CrlId => Str


=back

Each argument is described in detail in: L<Paws::RolesAnywhere::GetCrl>

Returns: a L<Paws::RolesAnywhere::CrlDetailResponse> instance

Gets a certificate revocation list (CRL).

B<Required permissions: > C<rolesanywhere:GetCrl>.


=head2 GetProfile

=over

=item ProfileId => Str


=back

Each argument is described in detail in: L<Paws::RolesAnywhere::GetProfile>

Returns: a L<Paws::RolesAnywhere::ProfileDetailResponse> instance

Gets a profile.

B<Required permissions: > C<rolesanywhere:GetProfile>.


=head2 GetSubject

=over

=item SubjectId => Str


=back

Each argument is described in detail in: L<Paws::RolesAnywhere::GetSubject>

Returns: a L<Paws::RolesAnywhere::SubjectDetailResponse> instance

Gets a I<subject>, which associates a certificate identity with
authentication attempts. The subject stores auditing information such
as the status of the last authentication attempt, the certificate data
used in the attempt, and the last time the associated identity
attempted authentication.

B<Required permissions: > C<rolesanywhere:GetSubject>.


=head2 GetTrustAnchor

=over

=item TrustAnchorId => Str


=back

Each argument is described in detail in: L<Paws::RolesAnywhere::GetTrustAnchor>

Returns: a L<Paws::RolesAnywhere::TrustAnchorDetailResponse> instance

Gets a trust anchor.

B<Required permissions: > C<rolesanywhere:GetTrustAnchor>.


=head2 ImportCrl

=over

=item CrlData => Str

=item Name => Str

=item TrustAnchorArn => Str

=item [Enabled => Bool]

=item [Tags => ArrayRef[L<Paws::RolesAnywhere::Tag>]]


=back

Each argument is described in detail in: L<Paws::RolesAnywhere::ImportCrl>

Returns: a L<Paws::RolesAnywhere::CrlDetailResponse> instance

Imports the certificate revocation list (CRL). A CRL is a list of
certificates that have been revoked by the issuing certificate
Authority (CA).In order to be properly imported, a CRL must be in PEM
format. IAM Roles Anywhere validates against the CRL before issuing
credentials.

B<Required permissions: > C<rolesanywhere:ImportCrl>.


=head2 ListCrls

=over

=item [NextToken => Str]

=item [PageSize => Int]


=back

Each argument is described in detail in: L<Paws::RolesAnywhere::ListCrls>

Returns: a L<Paws::RolesAnywhere::ListCrlsResponse> instance

Lists all certificate revocation lists (CRL) in the authenticated
account and Amazon Web Services Region.

B<Required permissions: > C<rolesanywhere:ListCrls>.


=head2 ListProfiles

=over

=item [NextToken => Str]

=item [PageSize => Int]


=back

Each argument is described in detail in: L<Paws::RolesAnywhere::ListProfiles>

Returns: a L<Paws::RolesAnywhere::ListProfilesResponse> instance

Lists all profiles in the authenticated account and Amazon Web Services
Region.

B<Required permissions: > C<rolesanywhere:ListProfiles>.


=head2 ListSubjects

=over

=item [NextToken => Str]

=item [PageSize => Int]


=back

Each argument is described in detail in: L<Paws::RolesAnywhere::ListSubjects>

Returns: a L<Paws::RolesAnywhere::ListSubjectsResponse> instance

Lists the subjects in the authenticated account and Amazon Web Services
Region.

B<Required permissions: > C<rolesanywhere:ListSubjects>.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::RolesAnywhere::ListTagsForResource>

Returns: a L<Paws::RolesAnywhere::ListTagsForResourceResponse> instance

Lists the tags attached to the resource.

B<Required permissions: > C<rolesanywhere:ListTagsForResource>.


=head2 ListTrustAnchors

=over

=item [NextToken => Str]

=item [PageSize => Int]


=back

Each argument is described in detail in: L<Paws::RolesAnywhere::ListTrustAnchors>

Returns: a L<Paws::RolesAnywhere::ListTrustAnchorsResponse> instance

Lists the trust anchors in the authenticated account and Amazon Web
Services Region.

B<Required permissions: > C<rolesanywhere:ListTrustAnchors>.


=head2 PutAttributeMapping

=over

=item CertificateField => Str

=item MappingRules => ArrayRef[L<Paws::RolesAnywhere::MappingRule>]

=item ProfileId => Str


=back

Each argument is described in detail in: L<Paws::RolesAnywhere::PutAttributeMapping>

Returns: a L<Paws::RolesAnywhere::PutAttributeMappingResponse> instance

Put an entry in the attribute mapping rules that will be enforced by a
given profile. A mapping specifies a certificate field and one or more
specifiers that have contextual meanings.


=head2 PutNotificationSettings

=over

=item NotificationSettings => ArrayRef[L<Paws::RolesAnywhere::NotificationSetting>]

=item TrustAnchorId => Str


=back

Each argument is described in detail in: L<Paws::RolesAnywhere::PutNotificationSettings>

Returns: a L<Paws::RolesAnywhere::PutNotificationSettingsResponse> instance

Attaches a list of I<notification settings> to a trust anchor.

A notification setting includes information such as event name,
threshold, status of the notification setting, and the channel to
notify.

B<Required permissions: > C<rolesanywhere:PutNotificationSettings>.


=head2 ResetNotificationSettings

=over

=item NotificationSettingKeys => ArrayRef[L<Paws::RolesAnywhere::NotificationSettingKey>]

=item TrustAnchorId => Str


=back

Each argument is described in detail in: L<Paws::RolesAnywhere::ResetNotificationSettings>

Returns: a L<Paws::RolesAnywhere::ResetNotificationSettingsResponse> instance

Resets the I<custom notification setting> to IAM Roles Anywhere default
setting.

B<Required permissions: > C<rolesanywhere:ResetNotificationSettings>.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => ArrayRef[L<Paws::RolesAnywhere::Tag>]


=back

Each argument is described in detail in: L<Paws::RolesAnywhere::TagResource>

Returns: a L<Paws::RolesAnywhere::TagResourceResponse> instance

Attaches tags to a resource.

B<Required permissions: > C<rolesanywhere:TagResource>.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::RolesAnywhere::UntagResource>

Returns: a L<Paws::RolesAnywhere::UntagResourceResponse> instance

Removes tags from the resource.

B<Required permissions: > C<rolesanywhere:UntagResource>.


=head2 UpdateCrl

=over

=item CrlId => Str

=item [CrlData => Str]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::RolesAnywhere::UpdateCrl>

Returns: a L<Paws::RolesAnywhere::CrlDetailResponse> instance

Updates the certificate revocation list (CRL). A CRL is a list of
certificates that have been revoked by the issuing certificate
authority (CA). IAM Roles Anywhere validates against the CRL before
issuing credentials.

B<Required permissions: > C<rolesanywhere:UpdateCrl>.


=head2 UpdateProfile

=over

=item ProfileId => Str

=item [AcceptRoleSessionName => Bool]

=item [DurationSeconds => Int]

=item [ManagedPolicyArns => ArrayRef[Str|Undef]]

=item [Name => Str]

=item [RoleArns => ArrayRef[Str|Undef]]

=item [SessionPolicy => Str]


=back

Each argument is described in detail in: L<Paws::RolesAnywhere::UpdateProfile>

Returns: a L<Paws::RolesAnywhere::ProfileDetailResponse> instance

Updates a I<profile>, a list of the roles that IAM Roles Anywhere
service is trusted to assume. You use profiles to intersect permissions
with IAM managed policies.

B<Required permissions: > C<rolesanywhere:UpdateProfile>.


=head2 UpdateTrustAnchor

=over

=item TrustAnchorId => Str

=item [Name => Str]

=item [Source => L<Paws::RolesAnywhere::Source>]


=back

Each argument is described in detail in: L<Paws::RolesAnywhere::UpdateTrustAnchor>

Returns: a L<Paws::RolesAnywhere::TrustAnchorDetailResponse> instance

Updates a trust anchor. You establish trust between IAM Roles Anywhere
and your certificate authority (CA) by configuring a trust anchor. You
can define a trust anchor as a reference to an Private Certificate
Authority (Private CA) or by uploading a CA certificate. Your Amazon
Web Services workloads can authenticate with the trust anchor using
certificates issued by the CA in exchange for temporary Amazon Web
Services credentials.

B<Required permissions: > C<rolesanywhere:UpdateTrustAnchor>.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllCrls(sub { },[NextToken => Str, PageSize => Int])

=head2 ListAllCrls([NextToken => Str, PageSize => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - crls, passing the object as the first parameter, and the string 'crls' as the second parameter 

If not, it will return a a L<Paws::RolesAnywhere::ListCrlsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllProfiles(sub { },[NextToken => Str, PageSize => Int])

=head2 ListAllProfiles([NextToken => Str, PageSize => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - profiles, passing the object as the first parameter, and the string 'profiles' as the second parameter 

If not, it will return a a L<Paws::RolesAnywhere::ListProfilesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSubjects(sub { },[NextToken => Str, PageSize => Int])

=head2 ListAllSubjects([NextToken => Str, PageSize => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - subjects, passing the object as the first parameter, and the string 'subjects' as the second parameter 

If not, it will return a a L<Paws::RolesAnywhere::ListSubjectsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTrustAnchors(sub { },[NextToken => Str, PageSize => Int])

=head2 ListAllTrustAnchors([NextToken => Str, PageSize => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - trustAnchors, passing the object as the first parameter, and the string 'trustAnchors' as the second parameter 

If not, it will return a a L<Paws::RolesAnywhere::ListTrustAnchorsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

