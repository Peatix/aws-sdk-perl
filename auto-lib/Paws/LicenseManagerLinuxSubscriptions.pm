package Paws::LicenseManagerLinuxSubscriptions;
  use Moose;
  sub service { 'license-manager-linux-subscriptions' }
  sub signing_name { 'license-manager-linux-subscriptions' }
  sub version { '2018-05-10' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub DeregisterSubscriptionProvider {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LicenseManagerLinuxSubscriptions::DeregisterSubscriptionProvider', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRegisteredSubscriptionProvider {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LicenseManagerLinuxSubscriptions::GetRegisteredSubscriptionProvider', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetServiceSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LicenseManagerLinuxSubscriptions::GetServiceSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListLinuxSubscriptionInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LicenseManagerLinuxSubscriptions::ListLinuxSubscriptionInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListLinuxSubscriptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LicenseManagerLinuxSubscriptions::ListLinuxSubscriptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRegisteredSubscriptionProviders {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LicenseManagerLinuxSubscriptions::ListRegisteredSubscriptionProviders', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LicenseManagerLinuxSubscriptions::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterSubscriptionProvider {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LicenseManagerLinuxSubscriptions::RegisterSubscriptionProvider', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LicenseManagerLinuxSubscriptions::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LicenseManagerLinuxSubscriptions::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateServiceSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LicenseManagerLinuxSubscriptions::UpdateServiceSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllLinuxSubscriptionInstances {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListLinuxSubscriptionInstances(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListLinuxSubscriptionInstances(@_, NextToken => $next_result->NextToken);
        push @{ $result->Instances }, @{ $next_result->Instances };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Instances') foreach (@{ $result->Instances });
        $result = $self->ListLinuxSubscriptionInstances(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Instances') foreach (@{ $result->Instances });
    }

    return undef
  }
  sub ListAllLinuxSubscriptions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListLinuxSubscriptions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListLinuxSubscriptions(@_, NextToken => $next_result->NextToken);
        push @{ $result->Subscriptions }, @{ $next_result->Subscriptions };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Subscriptions') foreach (@{ $result->Subscriptions });
        $result = $self->ListLinuxSubscriptions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Subscriptions') foreach (@{ $result->Subscriptions });
    }

    return undef
  }
  sub ListAllRegisteredSubscriptionProviders {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListRegisteredSubscriptionProviders(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListRegisteredSubscriptionProviders(@_, NextToken => $next_result->NextToken);
        push @{ $result->RegisteredSubscriptionProviders }, @{ $next_result->RegisteredSubscriptionProviders };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'RegisteredSubscriptionProviders') foreach (@{ $result->RegisteredSubscriptionProviders });
        $result = $self->ListRegisteredSubscriptionProviders(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'RegisteredSubscriptionProviders') foreach (@{ $result->RegisteredSubscriptionProviders });
    }

    return undef
  }


  sub operations { qw/DeregisterSubscriptionProvider GetRegisteredSubscriptionProvider GetServiceSettings ListLinuxSubscriptionInstances ListLinuxSubscriptions ListRegisteredSubscriptionProviders ListTagsForResource RegisterSubscriptionProvider TagResource UntagResource UpdateServiceSettings / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManagerLinuxSubscriptions - Perl Interface to AWS AWS License Manager Linux Subscriptions

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('LicenseManagerLinuxSubscriptions');
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

With License Manager, you can discover and track your commercial Linux
subscriptions on running Amazon EC2 instances.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/license-manager-linux-subscriptions-2018-05-10>


=head1 METHODS

=head2 DeregisterSubscriptionProvider

=over

=item SubscriptionProviderArn => Str


=back

Each argument is described in detail in: L<Paws::LicenseManagerLinuxSubscriptions::DeregisterSubscriptionProvider>

Returns: a L<Paws::LicenseManagerLinuxSubscriptions::DeregisterSubscriptionProviderResponse> instance

Remove a third-party subscription provider from the Bring Your Own
License (BYOL) subscriptions registered to your account.


=head2 GetRegisteredSubscriptionProvider

=over

=item SubscriptionProviderArn => Str


=back

Each argument is described in detail in: L<Paws::LicenseManagerLinuxSubscriptions::GetRegisteredSubscriptionProvider>

Returns: a L<Paws::LicenseManagerLinuxSubscriptions::GetRegisteredSubscriptionProviderResponse> instance

Get details for a Bring Your Own License (BYOL) subscription that's
registered to your account.


=head2 GetServiceSettings






Each argument is described in detail in: L<Paws::LicenseManagerLinuxSubscriptions::GetServiceSettings>

Returns: a L<Paws::LicenseManagerLinuxSubscriptions::GetServiceSettingsResponse> instance

Lists the Linux subscriptions service settings for your account.


=head2 ListLinuxSubscriptionInstances

=over

=item [Filters => ArrayRef[L<Paws::LicenseManagerLinuxSubscriptions::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::LicenseManagerLinuxSubscriptions::ListLinuxSubscriptionInstances>

Returns: a L<Paws::LicenseManagerLinuxSubscriptions::ListLinuxSubscriptionInstancesResponse> instance

Lists the running Amazon EC2 instances that were discovered with
commercial Linux subscriptions.


=head2 ListLinuxSubscriptions

=over

=item [Filters => ArrayRef[L<Paws::LicenseManagerLinuxSubscriptions::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::LicenseManagerLinuxSubscriptions::ListLinuxSubscriptions>

Returns: a L<Paws::LicenseManagerLinuxSubscriptions::ListLinuxSubscriptionsResponse> instance

Lists the Linux subscriptions that have been discovered. If you have
linked your organization, the returned results will include data
aggregated across your accounts in Organizations.


=head2 ListRegisteredSubscriptionProviders

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SubscriptionProviderSources => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::LicenseManagerLinuxSubscriptions::ListRegisteredSubscriptionProviders>

Returns: a L<Paws::LicenseManagerLinuxSubscriptions::ListRegisteredSubscriptionProvidersResponse> instance

List Bring Your Own License (BYOL) subscription registration resources
for your account.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::LicenseManagerLinuxSubscriptions::ListTagsForResource>

Returns: a L<Paws::LicenseManagerLinuxSubscriptions::ListTagsForResourceResponse> instance

List the metadata tags that are assigned to the specified Amazon Web
Services resource.


=head2 RegisterSubscriptionProvider

=over

=item SecretArn => Str

=item SubscriptionProviderSource => Str

=item [Tags => L<Paws::LicenseManagerLinuxSubscriptions::Tags>]


=back

Each argument is described in detail in: L<Paws::LicenseManagerLinuxSubscriptions::RegisterSubscriptionProvider>

Returns: a L<Paws::LicenseManagerLinuxSubscriptions::RegisterSubscriptionProviderResponse> instance

Register the supported third-party subscription provider for your Bring
Your Own License (BYOL) subscription.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::LicenseManagerLinuxSubscriptions::Tags>


=back

Each argument is described in detail in: L<Paws::LicenseManagerLinuxSubscriptions::TagResource>

Returns: a L<Paws::LicenseManagerLinuxSubscriptions::TagResourceResponse> instance

Add metadata tags to the specified Amazon Web Services resource.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::LicenseManagerLinuxSubscriptions::UntagResource>

Returns: a L<Paws::LicenseManagerLinuxSubscriptions::UntagResourceResponse> instance

Remove one or more metadata tag from the specified Amazon Web Services
resource.


=head2 UpdateServiceSettings

=over

=item LinuxSubscriptionsDiscovery => Str

=item LinuxSubscriptionsDiscoverySettings => L<Paws::LicenseManagerLinuxSubscriptions::LinuxSubscriptionsDiscoverySettings>

=item [AllowUpdate => Bool]


=back

Each argument is described in detail in: L<Paws::LicenseManagerLinuxSubscriptions::UpdateServiceSettings>

Returns: a L<Paws::LicenseManagerLinuxSubscriptions::UpdateServiceSettingsResponse> instance

Updates the service settings for Linux subscriptions.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllLinuxSubscriptionInstances(sub { },[Filters => ArrayRef[L<Paws::LicenseManagerLinuxSubscriptions::Filter>], MaxResults => Int, NextToken => Str])

=head2 ListAllLinuxSubscriptionInstances([Filters => ArrayRef[L<Paws::LicenseManagerLinuxSubscriptions::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Instances, passing the object as the first parameter, and the string 'Instances' as the second parameter 

If not, it will return a a L<Paws::LicenseManagerLinuxSubscriptions::ListLinuxSubscriptionInstancesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllLinuxSubscriptions(sub { },[Filters => ArrayRef[L<Paws::LicenseManagerLinuxSubscriptions::Filter>], MaxResults => Int, NextToken => Str])

=head2 ListAllLinuxSubscriptions([Filters => ArrayRef[L<Paws::LicenseManagerLinuxSubscriptions::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Subscriptions, passing the object as the first parameter, and the string 'Subscriptions' as the second parameter 

If not, it will return a a L<Paws::LicenseManagerLinuxSubscriptions::ListLinuxSubscriptionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllRegisteredSubscriptionProviders(sub { },[MaxResults => Int, NextToken => Str, SubscriptionProviderSources => ArrayRef[Str|Undef]])

=head2 ListAllRegisteredSubscriptionProviders([MaxResults => Int, NextToken => Str, SubscriptionProviderSources => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - RegisteredSubscriptionProviders, passing the object as the first parameter, and the string 'RegisteredSubscriptionProviders' as the second parameter 

If not, it will return a a L<Paws::LicenseManagerLinuxSubscriptions::ListRegisteredSubscriptionProvidersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

