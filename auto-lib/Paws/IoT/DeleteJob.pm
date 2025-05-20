
package Paws::IoT::DeleteJob;
  use Moose;
  has Force => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'force');
  has JobId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'jobId', required => 1);
  has NamespaceId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'namespaceId');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/jobs/{jobId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DeleteJob - Arguments for method DeleteJob on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteJob on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method DeleteJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteJob.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    $iot->DeleteJob(
      JobId       => 'MyJobId',
      Force       => 1,                  # OPTIONAL
      NamespaceId => 'MyNamespaceId',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/DeleteJob>

=head1 ATTRIBUTES


=head2 Force => Bool

(Optional) When true, you can delete a job which is "IN_PROGRESS".
Otherwise, you can only delete a job which is in a terminal state
("COMPLETED" or "CANCELED") or an exception will occur. The default is
false.

Deleting a job which is "IN_PROGRESS", will cause a device which is
executing the job to be unable to access job information or update the
job execution status. Use caution and ensure that each device executing
a job which is deleted is able to recover to a valid state.



=head2 B<REQUIRED> JobId => Str

The ID of the job to be deleted.

After a job deletion is completed, you may reuse this jobId when you
create a new job. However, this is not recommended, and you must ensure
that your devices are not using the jobId to refer to the deleted job.



=head2 NamespaceId => Str

The namespace used to indicate that a job is a customer-managed job.

When you specify a value for this parameter, Amazon Web Services IoT
Core sends jobs notifications to MQTT topics that contain the value in
the following format.

C<$aws/things/I<THING_NAME>/jobs/I<JOB_ID>/notify-namespace-I<NAMESPACE_ID>/>

The C<namespaceId> feature is only supported by IoT Greengrass at this
time. For more information, see Setting up IoT Greengrass core devices.
(https://docs.aws.amazon.com/greengrass/v2/developerguide/setting-up.html)




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteJob in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

