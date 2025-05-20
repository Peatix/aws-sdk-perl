
package Paws::CloudWatchLogs::PutDestinationPolicy;
  use Moose;
  has AccessPolicy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'accessPolicy' , required => 1);
  has DestinationName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'destinationName' , required => 1);
  has ForceUpdate => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'forceUpdate' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutDestinationPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::PutDestinationPolicy - Arguments for method PutDestinationPolicy on L<Paws::CloudWatchLogs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutDestinationPolicy on the
L<Amazon CloudWatch Logs|Paws::CloudWatchLogs> service. Use the attributes of this class
as arguments to method PutDestinationPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutDestinationPolicy.

=head1 SYNOPSIS

    my $logs = Paws->service('CloudWatchLogs');
    $logs->PutDestinationPolicy(
      AccessPolicy    => 'MyAccessPolicy',
      DestinationName => 'MyDestinationName',
      ForceUpdate     => 1,                     # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/logs/PutDestinationPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccessPolicy => Str

An IAM policy document that authorizes cross-account users to deliver
their log events to the associated destination. This can be up to 5120
bytes.



=head2 B<REQUIRED> DestinationName => Str

A name for an existing destination.



=head2 ForceUpdate => Bool

Specify true if you are updating an existing destination policy to
grant permission to an organization ID instead of granting permission
to individual Amazon Web Services accounts. Before you update a
destination policy this way, you must first update the subscription
filters in the accounts that send logs to this destination. If you do
not, the subscription filters might stop working. By specifying C<true>
for C<forceUpdate>, you are affirming that you have already updated the
subscription filters. For more information, see Updating an existing
cross-account subscription
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/Cross-Account-Log_Subscription-Update.html)

If you omit this parameter, the default of C<false> is used.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutDestinationPolicy in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

