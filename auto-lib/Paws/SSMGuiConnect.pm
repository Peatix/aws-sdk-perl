package Paws::SSMGuiConnect;
  use Moose;
  sub service { 'ssm-guiconnect' }
  sub signing_name { 'ssm-guiconnect' }
  sub version { '2021-05-01' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub DeleteConnectionRecordingPreferences {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSMGuiConnect::DeleteConnectionRecordingPreferences', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetConnectionRecordingPreferences {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSMGuiConnect::GetConnectionRecordingPreferences', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateConnectionRecordingPreferences {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSMGuiConnect::UpdateConnectionRecordingPreferences', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/DeleteConnectionRecordingPreferences GetConnectionRecordingPreferences UpdateConnectionRecordingPreferences / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMGuiConnect - Perl Interface to AWS AWS SSM-GUIConnect

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('SSMGuiConnect');
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

AWS Systems Manager GUI Connect

Systems Manager GUI Connect, a component of Fleet Manager, lets you
connect to your Window Server-type Amazon Elastic Compute Cloud (Amazon
EC2) instances using the Remote Desktop Protocol (RDP). GUI Connect,
which is powered by Amazon DCV
(https://docs.aws.amazon.com/dcv/latest/adminguide/what-is-dcv.html),
provides you with secure connectivity to your Windows Server instances
directly from the Systems Manager console. You can have up to four
simultaneous connections in a single browser window. In the console,
GUI Connect is also referred to as Fleet Manager Remote Desktop.

This reference is intended to be used with the I<Amazon Web Services
Systems Manager User Guide>
(https://docs.aws.amazon.com/systems-manager/latest/userguide/). To get
started, see the following user guide topics:

=over

=item *

Setting up Amazon Web Services Systems Manager
(https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-setting-up.html)

=item *

Connect to a Windows Server managed instance using Remote Desktop
(https://docs.aws.amazon.com/systems-manager/latest/userguide/fleet-rdp.html)

=back


For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm-guiconnect-2021-05-01>


=head1 METHODS

=head2 DeleteConnectionRecordingPreferences

=over

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::SSMGuiConnect::DeleteConnectionRecordingPreferences>

Returns: a L<Paws::SSMGuiConnect::DeleteConnectionRecordingPreferencesResponse> instance

Deletes the preferences for recording RDP connections.


=head2 GetConnectionRecordingPreferences

=over

=item  => 


=back

Each argument is described in detail in: L<Paws::SSMGuiConnect::GetConnectionRecordingPreferences>

Returns: a L<Paws::SSMGuiConnect::GetConnectionRecordingPreferencesResponse> instance

Returns the preferences specified for recording RDP connections in the
requesting Amazon Web Services account and Amazon Web Services Region.


=head2 UpdateConnectionRecordingPreferences

=over

=item ConnectionRecordingPreferences => L<Paws::SSMGuiConnect::ConnectionRecordingPreferences>

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::SSMGuiConnect::UpdateConnectionRecordingPreferences>

Returns: a L<Paws::SSMGuiConnect::UpdateConnectionRecordingPreferencesResponse> instance

Updates the preferences for recording RDP connections.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

