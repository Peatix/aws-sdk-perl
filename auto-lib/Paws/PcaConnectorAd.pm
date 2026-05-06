package Paws::PcaConnectorAd;
  use Moose;
  sub service { 'pca-connector-ad' }
  sub signing_name { 'pca-connector-ad' }
  sub version { '2018-05-10' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateConnector {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PcaConnectorAd::CreateConnector', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDirectoryRegistration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PcaConnectorAd::CreateDirectoryRegistration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateServicePrincipalName {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PcaConnectorAd::CreateServicePrincipalName', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PcaConnectorAd::CreateTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTemplateGroupAccessControlEntry {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PcaConnectorAd::CreateTemplateGroupAccessControlEntry', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteConnector {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PcaConnectorAd::DeleteConnector', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDirectoryRegistration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PcaConnectorAd::DeleteDirectoryRegistration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteServicePrincipalName {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PcaConnectorAd::DeleteServicePrincipalName', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PcaConnectorAd::DeleteTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTemplateGroupAccessControlEntry {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PcaConnectorAd::DeleteTemplateGroupAccessControlEntry', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetConnector {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PcaConnectorAd::GetConnector', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDirectoryRegistration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PcaConnectorAd::GetDirectoryRegistration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetServicePrincipalName {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PcaConnectorAd::GetServicePrincipalName', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PcaConnectorAd::GetTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTemplateGroupAccessControlEntry {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PcaConnectorAd::GetTemplateGroupAccessControlEntry', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListConnectors {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PcaConnectorAd::ListConnectors', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDirectoryRegistrations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PcaConnectorAd::ListDirectoryRegistrations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListServicePrincipalNames {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PcaConnectorAd::ListServicePrincipalNames', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PcaConnectorAd::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTemplateGroupAccessControlEntries {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PcaConnectorAd::ListTemplateGroupAccessControlEntries', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTemplates {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PcaConnectorAd::ListTemplates', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PcaConnectorAd::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PcaConnectorAd::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PcaConnectorAd::UpdateTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateTemplateGroupAccessControlEntry {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PcaConnectorAd::UpdateTemplateGroupAccessControlEntry', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllConnectors {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListConnectors(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListConnectors(@_, NextToken => $next_result->NextToken);
        push @{ $result->Connectors }, @{ $next_result->Connectors };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Connectors') foreach (@{ $result->Connectors });
        $result = $self->ListConnectors(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Connectors') foreach (@{ $result->Connectors });
    }

    return undef
  }
  sub ListAllDirectoryRegistrations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDirectoryRegistrations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListDirectoryRegistrations(@_, NextToken => $next_result->NextToken);
        push @{ $result->DirectoryRegistrations }, @{ $next_result->DirectoryRegistrations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'DirectoryRegistrations') foreach (@{ $result->DirectoryRegistrations });
        $result = $self->ListDirectoryRegistrations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'DirectoryRegistrations') foreach (@{ $result->DirectoryRegistrations });
    }

    return undef
  }
  sub ListAllServicePrincipalNames {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListServicePrincipalNames(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListServicePrincipalNames(@_, NextToken => $next_result->NextToken);
        push @{ $result->ServicePrincipalNames }, @{ $next_result->ServicePrincipalNames };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ServicePrincipalNames') foreach (@{ $result->ServicePrincipalNames });
        $result = $self->ListServicePrincipalNames(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ServicePrincipalNames') foreach (@{ $result->ServicePrincipalNames });
    }

    return undef
  }
  sub ListAllTemplateGroupAccessControlEntries {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTemplateGroupAccessControlEntries(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListTemplateGroupAccessControlEntries(@_, NextToken => $next_result->NextToken);
        push @{ $result->AccessControlEntries }, @{ $next_result->AccessControlEntries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'AccessControlEntries') foreach (@{ $result->AccessControlEntries });
        $result = $self->ListTemplateGroupAccessControlEntries(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'AccessControlEntries') foreach (@{ $result->AccessControlEntries });
    }

    return undef
  }
  sub ListAllTemplates {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTemplates(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListTemplates(@_, NextToken => $next_result->NextToken);
        push @{ $result->Templates }, @{ $next_result->Templates };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Templates') foreach (@{ $result->Templates });
        $result = $self->ListTemplates(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Templates') foreach (@{ $result->Templates });
    }

    return undef
  }


  sub operations { qw/CreateConnector CreateDirectoryRegistration CreateServicePrincipalName CreateTemplate CreateTemplateGroupAccessControlEntry DeleteConnector DeleteDirectoryRegistration DeleteServicePrincipalName DeleteTemplate DeleteTemplateGroupAccessControlEntry GetConnector GetDirectoryRegistration GetServicePrincipalName GetTemplate GetTemplateGroupAccessControlEntry ListConnectors ListDirectoryRegistrations ListServicePrincipalNames ListTagsForResource ListTemplateGroupAccessControlEntries ListTemplates TagResource UntagResource UpdateTemplate UpdateTemplateGroupAccessControlEntry / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::PcaConnectorAd - Perl Interface to AWS PcaConnectorAd

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('PcaConnectorAd');
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

Amazon Web Services Private CA Connector for Active Directory creates a
connector between Amazon Web Services Private CA and Active Directory
(AD) that enables you to provision security certificates for AD signed
by a private CA that you own. For more information, see Amazon Web
Services Private CA Connector for Active Directory
(https://docs.aws.amazon.com/privateca/latest/userguide/ad-connector.html).

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 CreateConnector

=over

=item CertificateAuthorityArn => Str

=item DirectoryId => Str

=item VpcInformation => L<Paws::PcaConnectorAd::VpcInformation>

=item [ClientToken => Str]

=item [Tags => L<Paws::PcaConnectorAd::Tags>]


=back

Each argument is described in detail in: L<Paws::PcaConnectorAd::CreateConnector>

Returns: a L<Paws::PcaConnectorAd::CreateConnectorResponse> instance

Creates a connector between Amazon Web Services Private CA and an
Active Directory. You must specify the private CA, directory ID, and
security groups.


=head2 CreateDirectoryRegistration

=over

=item DirectoryId => Str

=item [ClientToken => Str]

=item [Tags => L<Paws::PcaConnectorAd::Tags>]


=back

Each argument is described in detail in: L<Paws::PcaConnectorAd::CreateDirectoryRegistration>

Returns: a L<Paws::PcaConnectorAd::CreateDirectoryRegistrationResponse> instance

Creates a directory registration that authorizes communication between
Amazon Web Services Private CA and an Active Directory


=head2 CreateServicePrincipalName

=over

=item ConnectorArn => Str

=item DirectoryRegistrationArn => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::PcaConnectorAd::CreateServicePrincipalName>

Returns: nothing

Creates a service principal name (SPN) for the service account in
Active Directory. Kerberos authentication uses SPNs to associate a
service instance with a service sign-in account.


=head2 CreateTemplate

=over

=item ConnectorArn => Str

=item Definition => L<Paws::PcaConnectorAd::TemplateDefinition>

=item Name => Str

=item [ClientToken => Str]

=item [Tags => L<Paws::PcaConnectorAd::Tags>]


=back

Each argument is described in detail in: L<Paws::PcaConnectorAd::CreateTemplate>

Returns: a L<Paws::PcaConnectorAd::CreateTemplateResponse> instance

Creates an Active Directory compatible certificate template. The
connectors issues certificates using these templates based on the
requesterE<rsquo>s Active Directory group membership.


=head2 CreateTemplateGroupAccessControlEntry

=over

=item AccessRights => L<Paws::PcaConnectorAd::AccessRights>

=item GroupDisplayName => Str

=item GroupSecurityIdentifier => Str

=item TemplateArn => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::PcaConnectorAd::CreateTemplateGroupAccessControlEntry>

Returns: nothing

Create a group access control entry. Allow or deny Active Directory
groups from enrolling and/or autoenrolling with the template based on
the group security identifiers (SIDs).


=head2 DeleteConnector

=over

=item ConnectorArn => Str


=back

Each argument is described in detail in: L<Paws::PcaConnectorAd::DeleteConnector>

Returns: nothing

Deletes a connector for Active Directory. You must provide the Amazon
Resource Name (ARN) of the connector that you want to delete. You can
find the ARN by calling the
https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_ListConnectors
(https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_ListConnectors)
action. Deleting a connector does not deregister your directory with
Amazon Web Services Private CA. You can deregister your directory by
calling the
https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_DeleteDirectoryRegistration
(https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_DeleteDirectoryRegistration)
action.


=head2 DeleteDirectoryRegistration

=over

=item DirectoryRegistrationArn => Str


=back

Each argument is described in detail in: L<Paws::PcaConnectorAd::DeleteDirectoryRegistration>

Returns: nothing

Deletes a directory registration. Deleting a directory registration
deauthorizes Amazon Web Services Private CA with the directory.


=head2 DeleteServicePrincipalName

=over

=item ConnectorArn => Str

=item DirectoryRegistrationArn => Str


=back

Each argument is described in detail in: L<Paws::PcaConnectorAd::DeleteServicePrincipalName>

Returns: nothing

Deletes the service principal name (SPN) used by a connector to
authenticate with your Active Directory.


=head2 DeleteTemplate

=over

=item TemplateArn => Str


=back

Each argument is described in detail in: L<Paws::PcaConnectorAd::DeleteTemplate>

Returns: nothing

Deletes a template. Certificates issued using the template are still
valid until they are revoked or expired.


=head2 DeleteTemplateGroupAccessControlEntry

=over

=item GroupSecurityIdentifier => Str

=item TemplateArn => Str


=back

Each argument is described in detail in: L<Paws::PcaConnectorAd::DeleteTemplateGroupAccessControlEntry>

Returns: nothing

Deletes a group access control entry.


=head2 GetConnector

=over

=item ConnectorArn => Str


=back

Each argument is described in detail in: L<Paws::PcaConnectorAd::GetConnector>

Returns: a L<Paws::PcaConnectorAd::GetConnectorResponse> instance

Lists information about your connector. You specify the connector on
input by its ARN (Amazon Resource Name).


=head2 GetDirectoryRegistration

=over

=item DirectoryRegistrationArn => Str


=back

Each argument is described in detail in: L<Paws::PcaConnectorAd::GetDirectoryRegistration>

Returns: a L<Paws::PcaConnectorAd::GetDirectoryRegistrationResponse> instance

A structure that contains information about your directory
registration.


=head2 GetServicePrincipalName

=over

=item ConnectorArn => Str

=item DirectoryRegistrationArn => Str


=back

Each argument is described in detail in: L<Paws::PcaConnectorAd::GetServicePrincipalName>

Returns: a L<Paws::PcaConnectorAd::GetServicePrincipalNameResponse> instance

Lists the service principal name that the connector uses to
authenticate with Active Directory.


=head2 GetTemplate

=over

=item TemplateArn => Str


=back

Each argument is described in detail in: L<Paws::PcaConnectorAd::GetTemplate>

Returns: a L<Paws::PcaConnectorAd::GetTemplateResponse> instance

Retrieves a certificate template that the connector uses to issue
certificates from a private CA.


=head2 GetTemplateGroupAccessControlEntry

=over

=item GroupSecurityIdentifier => Str

=item TemplateArn => Str


=back

Each argument is described in detail in: L<Paws::PcaConnectorAd::GetTemplateGroupAccessControlEntry>

Returns: a L<Paws::PcaConnectorAd::GetTemplateGroupAccessControlEntryResponse> instance

Retrieves the group access control entries for a template.


=head2 ListConnectors

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::PcaConnectorAd::ListConnectors>

Returns: a L<Paws::PcaConnectorAd::ListConnectorsResponse> instance

Lists the connectors that you created by using the
https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateConnector
(https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateConnector)
action.


=head2 ListDirectoryRegistrations

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::PcaConnectorAd::ListDirectoryRegistrations>

Returns: a L<Paws::PcaConnectorAd::ListDirectoryRegistrationsResponse> instance

Lists the directory registrations that you created by using the
https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateDirectoryRegistration
(https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateDirectoryRegistration)
action.


=head2 ListServicePrincipalNames

=over

=item DirectoryRegistrationArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::PcaConnectorAd::ListServicePrincipalNames>

Returns: a L<Paws::PcaConnectorAd::ListServicePrincipalNamesResponse> instance

Lists the service principal names that the connector uses to
authenticate with Active Directory.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::PcaConnectorAd::ListTagsForResource>

Returns: a L<Paws::PcaConnectorAd::ListTagsForResourceResponse> instance

Lists the tags, if any, that are associated with your resource.


=head2 ListTemplateGroupAccessControlEntries

=over

=item TemplateArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::PcaConnectorAd::ListTemplateGroupAccessControlEntries>

Returns: a L<Paws::PcaConnectorAd::ListTemplateGroupAccessControlEntriesResponse> instance

Lists group access control entries you created.


=head2 ListTemplates

=over

=item ConnectorArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::PcaConnectorAd::ListTemplates>

Returns: a L<Paws::PcaConnectorAd::ListTemplatesResponse> instance

Lists the templates, if any, that are associated with a connector.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::PcaConnectorAd::Tags>


=back

Each argument is described in detail in: L<Paws::PcaConnectorAd::TagResource>

Returns: nothing

Adds one or more tags to your resource.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::PcaConnectorAd::UntagResource>

Returns: nothing

Removes one or more tags from your resource.


=head2 UpdateTemplate

=over

=item TemplateArn => Str

=item [Definition => L<Paws::PcaConnectorAd::TemplateDefinition>]

=item [ReenrollAllCertificateHolders => Bool]


=back

Each argument is described in detail in: L<Paws::PcaConnectorAd::UpdateTemplate>

Returns: nothing

Update template configuration to define the information included in
certificates.


=head2 UpdateTemplateGroupAccessControlEntry

=over

=item GroupSecurityIdentifier => Str

=item TemplateArn => Str

=item [AccessRights => L<Paws::PcaConnectorAd::AccessRights>]

=item [GroupDisplayName => Str]


=back

Each argument is described in detail in: L<Paws::PcaConnectorAd::UpdateTemplateGroupAccessControlEntry>

Returns: nothing

Update a group access control entry you created using
CreateTemplateGroupAccessControlEntry
(https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateTemplateGroupAccessControlEntry.html).




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllConnectors(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllConnectors([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Connectors, passing the object as the first parameter, and the string 'Connectors' as the second parameter 

If not, it will return a a L<Paws::PcaConnectorAd::ListConnectorsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDirectoryRegistrations(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllDirectoryRegistrations([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DirectoryRegistrations, passing the object as the first parameter, and the string 'DirectoryRegistrations' as the second parameter 

If not, it will return a a L<Paws::PcaConnectorAd::ListDirectoryRegistrationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllServicePrincipalNames(sub { },DirectoryRegistrationArn => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllServicePrincipalNames(DirectoryRegistrationArn => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ServicePrincipalNames, passing the object as the first parameter, and the string 'ServicePrincipalNames' as the second parameter 

If not, it will return a a L<Paws::PcaConnectorAd::ListServicePrincipalNamesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTemplateGroupAccessControlEntries(sub { },TemplateArn => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllTemplateGroupAccessControlEntries(TemplateArn => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - AccessControlEntries, passing the object as the first parameter, and the string 'AccessControlEntries' as the second parameter 

If not, it will return a a L<Paws::PcaConnectorAd::ListTemplateGroupAccessControlEntriesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTemplates(sub { },ConnectorArn => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllTemplates(ConnectorArn => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Templates, passing the object as the first parameter, and the string 'Templates' as the second parameter 

If not, it will return a a L<Paws::PcaConnectorAd::ListTemplatesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

