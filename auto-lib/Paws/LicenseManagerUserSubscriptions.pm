package Paws::LicenseManagerUserSubscriptions;
  use Moose;
  sub service { 'license-manager-user-subscriptions' }
  sub signing_name { 'license-manager-user-subscriptions' }
  sub version { '2018-05-10' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub AssociateUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LicenseManagerUserSubscriptions::AssociateUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateLicenseServerEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LicenseManagerUserSubscriptions::CreateLicenseServerEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteLicenseServerEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LicenseManagerUserSubscriptions::DeleteLicenseServerEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeregisterIdentityProvider {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LicenseManagerUserSubscriptions::DeregisterIdentityProvider', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LicenseManagerUserSubscriptions::DisassociateUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListIdentityProviders {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LicenseManagerUserSubscriptions::ListIdentityProviders', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LicenseManagerUserSubscriptions::ListInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListLicenseServerEndpoints {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LicenseManagerUserSubscriptions::ListLicenseServerEndpoints', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListProductSubscriptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LicenseManagerUserSubscriptions::ListProductSubscriptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LicenseManagerUserSubscriptions::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListUserAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LicenseManagerUserSubscriptions::ListUserAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterIdentityProvider {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LicenseManagerUserSubscriptions::RegisterIdentityProvider', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartProductSubscription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LicenseManagerUserSubscriptions::StartProductSubscription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopProductSubscription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LicenseManagerUserSubscriptions::StopProductSubscription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LicenseManagerUserSubscriptions::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LicenseManagerUserSubscriptions::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateIdentityProviderSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LicenseManagerUserSubscriptions::UpdateIdentityProviderSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllIdentityProviders {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListIdentityProviders(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListIdentityProviders(@_, NextToken => $next_result->NextToken);
        push @{ $result->IdentityProviderSummaries }, @{ $next_result->IdentityProviderSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'IdentityProviderSummaries') foreach (@{ $result->IdentityProviderSummaries });
        $result = $self->ListIdentityProviders(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'IdentityProviderSummaries') foreach (@{ $result->IdentityProviderSummaries });
    }

    return undef
  }
  sub ListAllInstances {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListInstances(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListInstances(@_, NextToken => $next_result->NextToken);
        push @{ $result->InstanceSummaries }, @{ $next_result->InstanceSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'InstanceSummaries') foreach (@{ $result->InstanceSummaries });
        $result = $self->ListInstances(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'InstanceSummaries') foreach (@{ $result->InstanceSummaries });
    }

    return undef
  }
  sub ListAllLicenseServerEndpoints {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListLicenseServerEndpoints(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListLicenseServerEndpoints(@_, NextToken => $next_result->NextToken);
        push @{ $result->LicenseServerEndpoints }, @{ $next_result->LicenseServerEndpoints };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'LicenseServerEndpoints') foreach (@{ $result->LicenseServerEndpoints });
        $result = $self->ListLicenseServerEndpoints(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'LicenseServerEndpoints') foreach (@{ $result->LicenseServerEndpoints });
    }

    return undef
  }
  sub ListAllProductSubscriptions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListProductSubscriptions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListProductSubscriptions(@_, NextToken => $next_result->NextToken);
        push @{ $result->ProductUserSummaries }, @{ $next_result->ProductUserSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ProductUserSummaries') foreach (@{ $result->ProductUserSummaries });
        $result = $self->ListProductSubscriptions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ProductUserSummaries') foreach (@{ $result->ProductUserSummaries });
    }

    return undef
  }
  sub ListAllUserAssociations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListUserAssociations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListUserAssociations(@_, NextToken => $next_result->NextToken);
        push @{ $result->InstanceUserSummaries }, @{ $next_result->InstanceUserSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'InstanceUserSummaries') foreach (@{ $result->InstanceUserSummaries });
        $result = $self->ListUserAssociations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'InstanceUserSummaries') foreach (@{ $result->InstanceUserSummaries });
    }

    return undef
  }


  sub operations { qw/AssociateUser CreateLicenseServerEndpoint DeleteLicenseServerEndpoint DeregisterIdentityProvider DisassociateUser ListIdentityProviders ListInstances ListLicenseServerEndpoints ListProductSubscriptions ListTagsForResource ListUserAssociations RegisterIdentityProvider StartProductSubscription StopProductSubscription TagResource UntagResource UpdateIdentityProviderSettings / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManagerUserSubscriptions - Perl Interface to AWS AWS License Manager User Subscriptions

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('LicenseManagerUserSubscriptions');
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

With License Manager, you can create user-based subscriptions to
utilize licensed software with a per user subscription fee on Amazon
EC2 instances.

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 AssociateUser

=over

=item IdentityProvider => L<Paws::LicenseManagerUserSubscriptions::IdentityProvider>

=item InstanceId => Str

=item Username => Str

=item [Domain => Str]

=item [Tags => L<Paws::LicenseManagerUserSubscriptions::Tags>]


=back

Each argument is described in detail in: L<Paws::LicenseManagerUserSubscriptions::AssociateUser>

Returns: a L<Paws::LicenseManagerUserSubscriptions::AssociateUserResponse> instance

Associates the user to an EC2 instance to utilize user-based
subscriptions.

Your estimated bill for charges on the number of users and related
costs will take 48 hours to appear for billing periods that haven't
closed (marked as B<Pending> billing status) in Amazon Web Services
Billing. For more information, see Viewing your monthly charges
(https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/invoice.html)
in the I<Amazon Web Services Billing User Guide>.


=head2 CreateLicenseServerEndpoint

=over

=item IdentityProviderArn => Str

=item LicenseServerSettings => L<Paws::LicenseManagerUserSubscriptions::LicenseServerSettings>

=item [Tags => L<Paws::LicenseManagerUserSubscriptions::Tags>]


=back

Each argument is described in detail in: L<Paws::LicenseManagerUserSubscriptions::CreateLicenseServerEndpoint>

Returns: a L<Paws::LicenseManagerUserSubscriptions::CreateLicenseServerEndpointResponse> instance

Creates a network endpoint for the Remote Desktop Services (RDS)
license server.


=head2 DeleteLicenseServerEndpoint

=over

=item LicenseServerEndpointArn => Str

=item ServerType => Str


=back

Each argument is described in detail in: L<Paws::LicenseManagerUserSubscriptions::DeleteLicenseServerEndpoint>

Returns: a L<Paws::LicenseManagerUserSubscriptions::DeleteLicenseServerEndpointResponse> instance

Deletes a C<LicenseServerEndpoint> resource.


=head2 DeregisterIdentityProvider

=over

=item [IdentityProvider => L<Paws::LicenseManagerUserSubscriptions::IdentityProvider>]

=item [IdentityProviderArn => Str]

=item [Product => Str]


=back

Each argument is described in detail in: L<Paws::LicenseManagerUserSubscriptions::DeregisterIdentityProvider>

Returns: a L<Paws::LicenseManagerUserSubscriptions::DeregisterIdentityProviderResponse> instance

Deregisters the Active Directory identity provider from License Manager
user-based subscriptions.


=head2 DisassociateUser

=over

=item [Domain => Str]

=item [IdentityProvider => L<Paws::LicenseManagerUserSubscriptions::IdentityProvider>]

=item [InstanceId => Str]

=item [InstanceUserArn => Str]

=item [Username => Str]


=back

Each argument is described in detail in: L<Paws::LicenseManagerUserSubscriptions::DisassociateUser>

Returns: a L<Paws::LicenseManagerUserSubscriptions::DisassociateUserResponse> instance

Disassociates the user from an EC2 instance providing user-based
subscriptions.


=head2 ListIdentityProviders

=over

=item [Filters => ArrayRef[L<Paws::LicenseManagerUserSubscriptions::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::LicenseManagerUserSubscriptions::ListIdentityProviders>

Returns: a L<Paws::LicenseManagerUserSubscriptions::ListIdentityProvidersResponse> instance

Lists the Active Directory identity providers for user-based
subscriptions.


=head2 ListInstances

=over

=item [Filters => ArrayRef[L<Paws::LicenseManagerUserSubscriptions::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::LicenseManagerUserSubscriptions::ListInstances>

Returns: a L<Paws::LicenseManagerUserSubscriptions::ListInstancesResponse> instance

Lists the EC2 instances providing user-based subscriptions.


=head2 ListLicenseServerEndpoints

=over

=item [Filters => ArrayRef[L<Paws::LicenseManagerUserSubscriptions::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::LicenseManagerUserSubscriptions::ListLicenseServerEndpoints>

Returns: a L<Paws::LicenseManagerUserSubscriptions::ListLicenseServerEndpointsResponse> instance

List the Remote Desktop Services (RDS) License Server endpoints


=head2 ListProductSubscriptions

=over

=item IdentityProvider => L<Paws::LicenseManagerUserSubscriptions::IdentityProvider>

=item [Filters => ArrayRef[L<Paws::LicenseManagerUserSubscriptions::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Product => Str]


=back

Each argument is described in detail in: L<Paws::LicenseManagerUserSubscriptions::ListProductSubscriptions>

Returns: a L<Paws::LicenseManagerUserSubscriptions::ListProductSubscriptionsResponse> instance

Lists the user-based subscription products available from an identity
provider.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::LicenseManagerUserSubscriptions::ListTagsForResource>

Returns: a L<Paws::LicenseManagerUserSubscriptions::ListTagsForResourceResponse> instance

Returns the list of tags for the specified resource.


=head2 ListUserAssociations

=over

=item IdentityProvider => L<Paws::LicenseManagerUserSubscriptions::IdentityProvider>

=item InstanceId => Str

=item [Filters => ArrayRef[L<Paws::LicenseManagerUserSubscriptions::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::LicenseManagerUserSubscriptions::ListUserAssociations>

Returns: a L<Paws::LicenseManagerUserSubscriptions::ListUserAssociationsResponse> instance

Lists user associations for an identity provider.


=head2 RegisterIdentityProvider

=over

=item IdentityProvider => L<Paws::LicenseManagerUserSubscriptions::IdentityProvider>

=item Product => Str

=item [Settings => L<Paws::LicenseManagerUserSubscriptions::Settings>]

=item [Tags => L<Paws::LicenseManagerUserSubscriptions::Tags>]


=back

Each argument is described in detail in: L<Paws::LicenseManagerUserSubscriptions::RegisterIdentityProvider>

Returns: a L<Paws::LicenseManagerUserSubscriptions::RegisterIdentityProviderResponse> instance

Registers an identity provider for user-based subscriptions.


=head2 StartProductSubscription

=over

=item IdentityProvider => L<Paws::LicenseManagerUserSubscriptions::IdentityProvider>

=item Product => Str

=item Username => Str

=item [Domain => Str]

=item [Tags => L<Paws::LicenseManagerUserSubscriptions::Tags>]


=back

Each argument is described in detail in: L<Paws::LicenseManagerUserSubscriptions::StartProductSubscription>

Returns: a L<Paws::LicenseManagerUserSubscriptions::StartProductSubscriptionResponse> instance

Starts a product subscription for a user with the specified identity
provider.

Your estimated bill for charges on the number of users and related
costs will take 48 hours to appear for billing periods that haven't
closed (marked as B<Pending> billing status) in Amazon Web Services
Billing. For more information, see Viewing your monthly charges
(https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/invoice.html)
in the I<Amazon Web Services Billing User Guide>.


=head2 StopProductSubscription

=over

=item [Domain => Str]

=item [IdentityProvider => L<Paws::LicenseManagerUserSubscriptions::IdentityProvider>]

=item [Product => Str]

=item [ProductUserArn => Str]

=item [Username => Str]


=back

Each argument is described in detail in: L<Paws::LicenseManagerUserSubscriptions::StopProductSubscription>

Returns: a L<Paws::LicenseManagerUserSubscriptions::StopProductSubscriptionResponse> instance

Stops a product subscription for a user with the specified identity
provider.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::LicenseManagerUserSubscriptions::Tags>


=back

Each argument is described in detail in: L<Paws::LicenseManagerUserSubscriptions::TagResource>

Returns: a L<Paws::LicenseManagerUserSubscriptions::TagResourceResponse> instance

Adds tags to a resource.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::LicenseManagerUserSubscriptions::UntagResource>

Returns: a L<Paws::LicenseManagerUserSubscriptions::UntagResourceResponse> instance

Removes tags from a resource.


=head2 UpdateIdentityProviderSettings

=over

=item UpdateSettings => L<Paws::LicenseManagerUserSubscriptions::UpdateSettings>

=item [IdentityProvider => L<Paws::LicenseManagerUserSubscriptions::IdentityProvider>]

=item [IdentityProviderArn => Str]

=item [Product => Str]


=back

Each argument is described in detail in: L<Paws::LicenseManagerUserSubscriptions::UpdateIdentityProviderSettings>

Returns: a L<Paws::LicenseManagerUserSubscriptions::UpdateIdentityProviderSettingsResponse> instance

Updates additional product configuration settings for the registered
identity provider.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllIdentityProviders(sub { },[Filters => ArrayRef[L<Paws::LicenseManagerUserSubscriptions::Filter>], MaxResults => Int, NextToken => Str])

=head2 ListAllIdentityProviders([Filters => ArrayRef[L<Paws::LicenseManagerUserSubscriptions::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - IdentityProviderSummaries, passing the object as the first parameter, and the string 'IdentityProviderSummaries' as the second parameter 

If not, it will return a a L<Paws::LicenseManagerUserSubscriptions::ListIdentityProvidersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllInstances(sub { },[Filters => ArrayRef[L<Paws::LicenseManagerUserSubscriptions::Filter>], MaxResults => Int, NextToken => Str])

=head2 ListAllInstances([Filters => ArrayRef[L<Paws::LicenseManagerUserSubscriptions::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - InstanceSummaries, passing the object as the first parameter, and the string 'InstanceSummaries' as the second parameter 

If not, it will return a a L<Paws::LicenseManagerUserSubscriptions::ListInstancesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllLicenseServerEndpoints(sub { },[Filters => ArrayRef[L<Paws::LicenseManagerUserSubscriptions::Filter>], MaxResults => Int, NextToken => Str])

=head2 ListAllLicenseServerEndpoints([Filters => ArrayRef[L<Paws::LicenseManagerUserSubscriptions::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - LicenseServerEndpoints, passing the object as the first parameter, and the string 'LicenseServerEndpoints' as the second parameter 

If not, it will return a a L<Paws::LicenseManagerUserSubscriptions::ListLicenseServerEndpointsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllProductSubscriptions(sub { },IdentityProvider => L<Paws::LicenseManagerUserSubscriptions::IdentityProvider>, [Filters => ArrayRef[L<Paws::LicenseManagerUserSubscriptions::Filter>], MaxResults => Int, NextToken => Str, Product => Str])

=head2 ListAllProductSubscriptions(IdentityProvider => L<Paws::LicenseManagerUserSubscriptions::IdentityProvider>, [Filters => ArrayRef[L<Paws::LicenseManagerUserSubscriptions::Filter>], MaxResults => Int, NextToken => Str, Product => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ProductUserSummaries, passing the object as the first parameter, and the string 'ProductUserSummaries' as the second parameter 

If not, it will return a a L<Paws::LicenseManagerUserSubscriptions::ListProductSubscriptionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllUserAssociations(sub { },IdentityProvider => L<Paws::LicenseManagerUserSubscriptions::IdentityProvider>, InstanceId => Str, [Filters => ArrayRef[L<Paws::LicenseManagerUserSubscriptions::Filter>], MaxResults => Int, NextToken => Str])

=head2 ListAllUserAssociations(IdentityProvider => L<Paws::LicenseManagerUserSubscriptions::IdentityProvider>, InstanceId => Str, [Filters => ArrayRef[L<Paws::LicenseManagerUserSubscriptions::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - InstanceUserSummaries, passing the object as the first parameter, and the string 'InstanceUserSummaries' as the second parameter 

If not, it will return a a L<Paws::LicenseManagerUserSubscriptions::ListUserAssociationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

