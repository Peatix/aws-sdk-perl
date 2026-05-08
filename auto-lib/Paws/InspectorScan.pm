package Paws::InspectorScan;
  use Moose;
  sub service { 'inspector-scan' }
  sub signing_name { 'inspector-scan' }
  sub version { '2023-08-08' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub ScanSbom {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::InspectorScan::ScanSbom', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/ScanSbom / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::InspectorScan - Perl Interface to AWS Inspector Scan

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('InspectorScan');
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

Amazon Inspector Scan is a vulnerability discovery service that scans a
provided Software Bill of Materials (SBOM) for security
vulnerabilities.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/inspector-scan-2023-08-08>


=head1 METHODS

=head2 ScanSbom

=over

=item Sbom => L<Paws::InspectorScan::Sbom>

=item [OutputFormat => Str]


=back

Each argument is described in detail in: L<Paws::InspectorScan::ScanSbom>

Returns: a L<Paws::InspectorScan::ScanSbomResponse> instance

Scans a provided CycloneDX 1.5 SBOM and reports on any vulnerabilities
discovered in that SBOM. You can generate compatible SBOMs for your
resources using the Amazon Inspector SBOM generator.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

