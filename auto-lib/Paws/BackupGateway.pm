package Paws::BackupGateway;
  use Moose;
  sub service { 'backup-gateway' }
  sub signing_name { 'backup-gateway' }
  sub version { '2021-01-01' }
  sub target_prefix { 'BackupOnPremises_v20210101' }
  sub json_version { "1.0" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub AssociateGatewayToServer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BackupGateway::AssociateGatewayToServer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BackupGateway::CreateGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BackupGateway::DeleteGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteHypervisor {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BackupGateway::DeleteHypervisor', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateGatewayFromServer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BackupGateway::DisassociateGatewayFromServer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBandwidthRateLimitSchedule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BackupGateway::GetBandwidthRateLimitSchedule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BackupGateway::GetGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetHypervisor {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BackupGateway::GetHypervisor', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetHypervisorPropertyMappings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BackupGateway::GetHypervisorPropertyMappings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetVirtualMachine {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BackupGateway::GetVirtualMachine', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ImportHypervisorConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BackupGateway::ImportHypervisorConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListGateways {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BackupGateway::ListGateways', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListHypervisors {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BackupGateway::ListHypervisors', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BackupGateway::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListVirtualMachines {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BackupGateway::ListVirtualMachines', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutBandwidthRateLimitSchedule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BackupGateway::PutBandwidthRateLimitSchedule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutHypervisorPropertyMappings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BackupGateway::PutHypervisorPropertyMappings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutMaintenanceStartTime {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BackupGateway::PutMaintenanceStartTime', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartVirtualMachinesMetadataSync {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BackupGateway::StartVirtualMachinesMetadataSync', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BackupGateway::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TestHypervisorConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BackupGateway::TestHypervisorConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BackupGateway::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateGatewayInformation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BackupGateway::UpdateGatewayInformation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateGatewaySoftwareNow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BackupGateway::UpdateGatewaySoftwareNow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateHypervisor {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BackupGateway::UpdateHypervisor', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllGateways {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListGateways(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListGateways(@_, NextToken => $next_result->NextToken);
        push @{ $result->Gateways }, @{ $next_result->Gateways };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Gateways') foreach (@{ $result->Gateways });
        $result = $self->ListGateways(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Gateways') foreach (@{ $result->Gateways });
    }

    return undef
  }
  sub ListAllHypervisors {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListHypervisors(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListHypervisors(@_, NextToken => $next_result->NextToken);
        push @{ $result->Hypervisors }, @{ $next_result->Hypervisors };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Hypervisors') foreach (@{ $result->Hypervisors });
        $result = $self->ListHypervisors(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Hypervisors') foreach (@{ $result->Hypervisors });
    }

    return undef
  }
  sub ListAllVirtualMachines {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListVirtualMachines(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListVirtualMachines(@_, NextToken => $next_result->NextToken);
        push @{ $result->VirtualMachines }, @{ $next_result->VirtualMachines };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'VirtualMachines') foreach (@{ $result->VirtualMachines });
        $result = $self->ListVirtualMachines(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'VirtualMachines') foreach (@{ $result->VirtualMachines });
    }

    return undef
  }


  sub operations { qw/AssociateGatewayToServer CreateGateway DeleteGateway DeleteHypervisor DisassociateGatewayFromServer GetBandwidthRateLimitSchedule GetGateway GetHypervisor GetHypervisorPropertyMappings GetVirtualMachine ImportHypervisorConfiguration ListGateways ListHypervisors ListTagsForResource ListVirtualMachines PutBandwidthRateLimitSchedule PutHypervisorPropertyMappings PutMaintenanceStartTime StartVirtualMachinesMetadataSync TagResource TestHypervisorConfiguration UntagResource UpdateGatewayInformation UpdateGatewaySoftwareNow UpdateHypervisor / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::BackupGateway - Perl Interface to AWS AWS Backup Gateway

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('BackupGateway');
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

Backup gateway

Backup gateway connects Backup to your hypervisor, so you can create,
store, and restore backups of your virtual machines (VMs) anywhere,
whether on-premises or in the VMware Cloud (VMC) on Amazon Web
Services.

Add on-premises resources by connecting to a hypervisor through a
gateway. Backup will automatically discover the resources in your
hypervisor.

Use Backup to assign virtual or on-premises resources to a backup plan,
or run on-demand backups. Once you have backed up your resources, you
can view them and restore them like any resource supported by Backup.

To download the Amazon Web Services software to get started, navigate
to the Backup console, choose B<Gateways>, then choose B<Create
gateway>.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01>


=head1 METHODS

=head2 AssociateGatewayToServer

=over

=item GatewayArn => Str

=item ServerArn => Str


=back

Each argument is described in detail in: L<Paws::BackupGateway::AssociateGatewayToServer>

Returns: a L<Paws::BackupGateway::AssociateGatewayToServerOutput> instance

Associates a backup gateway with your server. After you complete the
association process, you can back up and restore your VMs through the
gateway.


=head2 CreateGateway

=over

=item ActivationKey => Str

=item GatewayDisplayName => Str

=item GatewayType => Str

=item [Tags => ArrayRef[L<Paws::BackupGateway::Tag>]]


=back

Each argument is described in detail in: L<Paws::BackupGateway::CreateGateway>

Returns: a L<Paws::BackupGateway::CreateGatewayOutput> instance

Creates a backup gateway. After you create a gateway, you can associate
it with a server using the C<AssociateGatewayToServer> operation.


=head2 DeleteGateway

=over

=item GatewayArn => Str


=back

Each argument is described in detail in: L<Paws::BackupGateway::DeleteGateway>

Returns: a L<Paws::BackupGateway::DeleteGatewayOutput> instance

Deletes a backup gateway.


=head2 DeleteHypervisor

=over

=item HypervisorArn => Str


=back

Each argument is described in detail in: L<Paws::BackupGateway::DeleteHypervisor>

Returns: a L<Paws::BackupGateway::DeleteHypervisorOutput> instance

Deletes a hypervisor.


=head2 DisassociateGatewayFromServer

=over

=item GatewayArn => Str


=back

Each argument is described in detail in: L<Paws::BackupGateway::DisassociateGatewayFromServer>

Returns: a L<Paws::BackupGateway::DisassociateGatewayFromServerOutput> instance

Disassociates a backup gateway from the specified server. After the
disassociation process finishes, the gateway can no longer access the
virtual machines on the server.


=head2 GetBandwidthRateLimitSchedule

=over

=item GatewayArn => Str


=back

Each argument is described in detail in: L<Paws::BackupGateway::GetBandwidthRateLimitSchedule>

Returns: a L<Paws::BackupGateway::GetBandwidthRateLimitScheduleOutput> instance

Retrieves the bandwidth rate limit schedule for a specified gateway. By
default, gateways do not have bandwidth rate limit schedules, which
means no bandwidth rate limiting is in effect. Use this to get a
gateway's bandwidth rate limit schedule.


=head2 GetGateway

=over

=item GatewayArn => Str


=back

Each argument is described in detail in: L<Paws::BackupGateway::GetGateway>

Returns: a L<Paws::BackupGateway::GetGatewayOutput> instance

By providing the ARN (Amazon Resource Name), this API returns the
gateway.


=head2 GetHypervisor

=over

=item HypervisorArn => Str


=back

Each argument is described in detail in: L<Paws::BackupGateway::GetHypervisor>

Returns: a L<Paws::BackupGateway::GetHypervisorOutput> instance

This action requests information about the specified hypervisor to
which the gateway will connect. A hypervisor is hardware, software, or
firmware that creates and manages virtual machines, and allocates
resources to them.


=head2 GetHypervisorPropertyMappings

=over

=item HypervisorArn => Str


=back

Each argument is described in detail in: L<Paws::BackupGateway::GetHypervisorPropertyMappings>

Returns: a L<Paws::BackupGateway::GetHypervisorPropertyMappingsOutput> instance

This action retrieves the property mappings for the specified
hypervisor. A hypervisor property mapping displays the relationship of
entity properties available from the on-premises hypervisor to the
properties available in Amazon Web Services.


=head2 GetVirtualMachine

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::BackupGateway::GetVirtualMachine>

Returns: a L<Paws::BackupGateway::GetVirtualMachineOutput> instance

By providing the ARN (Amazon Resource Name), this API returns the
virtual machine.


=head2 ImportHypervisorConfiguration

=over

=item Host => Str

=item Name => Str

=item [KmsKeyArn => Str]

=item [Password => Str]

=item [Tags => ArrayRef[L<Paws::BackupGateway::Tag>]]

=item [Username => Str]


=back

Each argument is described in detail in: L<Paws::BackupGateway::ImportHypervisorConfiguration>

Returns: a L<Paws::BackupGateway::ImportHypervisorConfigurationOutput> instance

Connect to a hypervisor by importing its configuration.


=head2 ListGateways

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::BackupGateway::ListGateways>

Returns: a L<Paws::BackupGateway::ListGatewaysOutput> instance

Lists backup gateways owned by an Amazon Web Services account in an
Amazon Web Services Region. The returned list is ordered by gateway
Amazon Resource Name (ARN).


=head2 ListHypervisors

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::BackupGateway::ListHypervisors>

Returns: a L<Paws::BackupGateway::ListHypervisorsOutput> instance

Lists your hypervisors.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::BackupGateway::ListTagsForResource>

Returns: a L<Paws::BackupGateway::ListTagsForResourceOutput> instance

Lists the tags applied to the resource identified by its Amazon
Resource Name (ARN).


=head2 ListVirtualMachines

=over

=item [HypervisorArn => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::BackupGateway::ListVirtualMachines>

Returns: a L<Paws::BackupGateway::ListVirtualMachinesOutput> instance

Lists your virtual machines.


=head2 PutBandwidthRateLimitSchedule

=over

=item BandwidthRateLimitIntervals => ArrayRef[L<Paws::BackupGateway::BandwidthRateLimitInterval>]

=item GatewayArn => Str


=back

Each argument is described in detail in: L<Paws::BackupGateway::PutBandwidthRateLimitSchedule>

Returns: a L<Paws::BackupGateway::PutBandwidthRateLimitScheduleOutput> instance

This action sets the bandwidth rate limit schedule for a specified
gateway. By default, gateways do not have a bandwidth rate limit
schedule, which means no bandwidth rate limiting is in effect. Use this
to initiate a gateway's bandwidth rate limit schedule.


=head2 PutHypervisorPropertyMappings

=over

=item HypervisorArn => Str

=item IamRoleArn => Str

=item VmwareToAwsTagMappings => ArrayRef[L<Paws::BackupGateway::VmwareToAwsTagMapping>]


=back

Each argument is described in detail in: L<Paws::BackupGateway::PutHypervisorPropertyMappings>

Returns: a L<Paws::BackupGateway::PutHypervisorPropertyMappingsOutput> instance

This action sets the property mappings for the specified hypervisor. A
hypervisor property mapping displays the relationship of entity
properties available from the on-premises hypervisor to the properties
available in Amazon Web Services.


=head2 PutMaintenanceStartTime

=over

=item GatewayArn => Str

=item HourOfDay => Int

=item MinuteOfHour => Int

=item [DayOfMonth => Int]

=item [DayOfWeek => Int]


=back

Each argument is described in detail in: L<Paws::BackupGateway::PutMaintenanceStartTime>

Returns: a L<Paws::BackupGateway::PutMaintenanceStartTimeOutput> instance

Set the maintenance start time for a gateway.


=head2 StartVirtualMachinesMetadataSync

=over

=item HypervisorArn => Str


=back

Each argument is described in detail in: L<Paws::BackupGateway::StartVirtualMachinesMetadataSync>

Returns: a L<Paws::BackupGateway::StartVirtualMachinesMetadataSyncOutput> instance

This action sends a request to sync metadata across the specified
virtual machines.


=head2 TagResource

=over

=item ResourceARN => Str

=item Tags => ArrayRef[L<Paws::BackupGateway::Tag>]


=back

Each argument is described in detail in: L<Paws::BackupGateway::TagResource>

Returns: a L<Paws::BackupGateway::TagResourceOutput> instance

Tag the resource.


=head2 TestHypervisorConfiguration

=over

=item GatewayArn => Str

=item Host => Str

=item [Password => Str]

=item [Username => Str]


=back

Each argument is described in detail in: L<Paws::BackupGateway::TestHypervisorConfiguration>

Returns: a L<Paws::BackupGateway::TestHypervisorConfigurationOutput> instance

Tests your hypervisor configuration to validate that backup gateway can
connect with the hypervisor and its resources.


=head2 UntagResource

=over

=item ResourceARN => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::BackupGateway::UntagResource>

Returns: a L<Paws::BackupGateway::UntagResourceOutput> instance

Removes tags from the resource.


=head2 UpdateGatewayInformation

=over

=item GatewayArn => Str

=item [GatewayDisplayName => Str]


=back

Each argument is described in detail in: L<Paws::BackupGateway::UpdateGatewayInformation>

Returns: a L<Paws::BackupGateway::UpdateGatewayInformationOutput> instance

Updates a gateway's name. Specify which gateway to update using the
Amazon Resource Name (ARN) of the gateway in your request.


=head2 UpdateGatewaySoftwareNow

=over

=item GatewayArn => Str


=back

Each argument is described in detail in: L<Paws::BackupGateway::UpdateGatewaySoftwareNow>

Returns: a L<Paws::BackupGateway::UpdateGatewaySoftwareNowOutput> instance

Updates the gateway virtual machine (VM) software. The request
immediately triggers the software update.

When you make this request, you get a C<200 OK> success response
immediately. However, it might take some time for the update to
complete.


=head2 UpdateHypervisor

=over

=item HypervisorArn => Str

=item [Host => Str]

=item [LogGroupArn => Str]

=item [Name => Str]

=item [Password => Str]

=item [Username => Str]


=back

Each argument is described in detail in: L<Paws::BackupGateway::UpdateHypervisor>

Returns: a L<Paws::BackupGateway::UpdateHypervisorOutput> instance

Updates a hypervisor metadata, including its host, username, and
password. Specify which hypervisor to update using the Amazon Resource
Name (ARN) of the hypervisor in your request.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllGateways(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllGateways([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Gateways, passing the object as the first parameter, and the string 'Gateways' as the second parameter 

If not, it will return a a L<Paws::BackupGateway::ListGatewaysOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllHypervisors(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllHypervisors([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Hypervisors, passing the object as the first parameter, and the string 'Hypervisors' as the second parameter 

If not, it will return a a L<Paws::BackupGateway::ListHypervisorsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllVirtualMachines(sub { },[HypervisorArn => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllVirtualMachines([HypervisorArn => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - VirtualMachines, passing the object as the first parameter, and the string 'VirtualMachines' as the second parameter 

If not, it will return a a L<Paws::BackupGateway::ListVirtualMachinesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

