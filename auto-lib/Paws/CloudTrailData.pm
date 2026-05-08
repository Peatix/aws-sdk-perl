package Paws::CloudTrailData;
  use Moose;
  sub service { 'cloudtrail-data' }
  sub signing_name { 'cloudtrail-data' }
  sub version { '2021-08-11' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub PutAuditEvents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudTrailData::PutAuditEvents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/PutAuditEvents / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrailData - Perl Interface to AWS AWS CloudTrail Data Service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('CloudTrailData');
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

The CloudTrail Data Service lets you ingest events into CloudTrail from
any source in your hybrid environments, such as in-house or SaaS
applications hosted on-premises or in the cloud, virtual machines, or
containers. You can store, access, analyze, troubleshoot and take
action on this data without maintaining multiple log aggregators and
reporting tools. After you run C<PutAuditEvents> to ingest your
application activity into CloudTrail, you can use CloudTrail Lake to
search, query, and analyze the data that is logged from your
applications.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudtrail-data-2021-08-11>


=head1 METHODS

=head2 PutAuditEvents

=over

=item AuditEvents => ArrayRef[L<Paws::CloudTrailData::AuditEvent>]

=item ChannelArn => Str

=item [ExternalId => Str]


=back

Each argument is described in detail in: L<Paws::CloudTrailData::PutAuditEvents>

Returns: a L<Paws::CloudTrailData::PutAuditEventsResponse> instance

Ingests your application events into CloudTrail Lake. A required
parameter, C<auditEvents>, accepts the JSON records (also called
I<payload>) of events that you want CloudTrail to ingest. You can add
up to 100 of these events (or up to 1 MB) per C<PutAuditEvents>
request.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

