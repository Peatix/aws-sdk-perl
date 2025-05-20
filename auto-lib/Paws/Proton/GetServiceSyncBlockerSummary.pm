
package Paws::Proton::GetServiceSyncBlockerSummary;
  use Moose;
  has ServiceInstanceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceInstanceName' );
  has ServiceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetServiceSyncBlockerSummary');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Proton::GetServiceSyncBlockerSummaryOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Proton::GetServiceSyncBlockerSummary - Arguments for method GetServiceSyncBlockerSummary on L<Paws::Proton>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetServiceSyncBlockerSummary on the
L<AWS Proton|Paws::Proton> service. Use the attributes of this class
as arguments to method GetServiceSyncBlockerSummary.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetServiceSyncBlockerSummary.

=head1 SYNOPSIS

    my $proton = Paws->service('Proton');
    my $GetServiceSyncBlockerSummaryOutput =
      $proton->GetServiceSyncBlockerSummary(
      ServiceName         => 'MyResourceName',
      ServiceInstanceName => 'MyResourceName',    # OPTIONAL
      );

    # Results:
    my $ServiceSyncBlockerSummary =
      $GetServiceSyncBlockerSummaryOutput->ServiceSyncBlockerSummary;

    # Returns a L<Paws::Proton::GetServiceSyncBlockerSummaryOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/proton/GetServiceSyncBlockerSummary>

=head1 ATTRIBUTES


=head2 ServiceInstanceName => Str

The name of the service instance that you want to get the service sync
blocker summary for. If given bothe the instance name and the service
name, only the instance is blocked.



=head2 B<REQUIRED> ServiceName => Str

The name of the service that you want to get the service sync blocker
summary for. If given only the service name, all instances are blocked.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetServiceSyncBlockerSummary in L<Paws::Proton>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

