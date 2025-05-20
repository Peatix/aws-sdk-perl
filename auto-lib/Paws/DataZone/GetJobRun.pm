
package Paws::DataZone::GetJobRun;
  use Moose;
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'identifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetJobRun');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/jobRuns/{identifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::GetJobRunOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::GetJobRun - Arguments for method GetJobRun on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetJobRun on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method GetJobRun.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetJobRun.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $GetJobRunOutput = $datazone->GetJobRun(
      DomainIdentifier => 'MyDomainId',
      Identifier       => 'MyRunIdentifier',

    );

    # Results:
    my $CreatedAt = $GetJobRunOutput->CreatedAt;
    my $CreatedBy = $GetJobRunOutput->CreatedBy;
    my $Details   = $GetJobRunOutput->Details;
    my $DomainId  = $GetJobRunOutput->DomainId;
    my $EndTime   = $GetJobRunOutput->EndTime;
    my $Error     = $GetJobRunOutput->Error;
    my $Id        = $GetJobRunOutput->Id;
    my $JobId     = $GetJobRunOutput->JobId;
    my $JobType   = $GetJobRunOutput->JobType;
    my $RunMode   = $GetJobRunOutput->RunMode;
    my $StartTime = $GetJobRunOutput->StartTime;
    my $Status    = $GetJobRunOutput->Status;

    # Returns a L<Paws::DataZone::GetJobRunOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/GetJobRun>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainIdentifier => Str

The ID of the domain.



=head2 B<REQUIRED> Identifier => Str

The ID of the job run.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetJobRun in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

