package Paws::CodeGuruSecurity;
  use Moose;
  sub service { 'codeguru-security' }
  sub signing_name { 'codeguru-security' }
  sub version { '2018-05-10' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub BatchGetFindings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeGuruSecurity::BatchGetFindings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateScan {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeGuruSecurity::CreateScan', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateUploadUrl {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeGuruSecurity::CreateUploadUrl', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAccountConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeGuruSecurity::GetAccountConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetFindings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeGuruSecurity::GetFindings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMetricsSummary {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeGuruSecurity::GetMetricsSummary', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetScan {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeGuruSecurity::GetScan', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFindingsMetrics {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeGuruSecurity::ListFindingsMetrics', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListScans {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeGuruSecurity::ListScans', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeGuruSecurity::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeGuruSecurity::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeGuruSecurity::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAccountConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeGuruSecurity::UpdateAccountConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub GetAllFindings {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetFindings(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->GetFindings(@_, nextToken => $next_result->nextToken);
        push @{ $result->findings }, @{ $next_result->findings };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'findings') foreach (@{ $result->findings });
        $result = $self->GetFindings(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'findings') foreach (@{ $result->findings });
    }

    return undef
  }
  sub ListAllFindingsMetrics {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListFindingsMetrics(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListFindingsMetrics(@_, nextToken => $next_result->nextToken);
        push @{ $result->findingsMetrics }, @{ $next_result->findingsMetrics };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'findingsMetrics') foreach (@{ $result->findingsMetrics });
        $result = $self->ListFindingsMetrics(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'findingsMetrics') foreach (@{ $result->findingsMetrics });
    }

    return undef
  }
  sub ListAllScans {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListScans(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListScans(@_, nextToken => $next_result->nextToken);
        push @{ $result->summaries }, @{ $next_result->summaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'summaries') foreach (@{ $result->summaries });
        $result = $self->ListScans(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'summaries') foreach (@{ $result->summaries });
    }

    return undef
  }


  sub operations { qw/BatchGetFindings CreateScan CreateUploadUrl GetAccountConfiguration GetFindings GetMetricsSummary GetScan ListFindingsMetrics ListScans ListTagsForResource TagResource UntagResource UpdateAccountConfiguration / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeGuruSecurity - Perl Interface to AWS Amazon CodeGuru Security

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('CodeGuruSecurity');
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

Amazon CodeGuru Security is in preview release and is subject to
change.

This section provides documentation for the Amazon CodeGuru Security
API operations. CodeGuru Security is a service that uses program
analysis and machine learning to detect security policy violations and
vulnerabilities, and recommends ways to address these security risks.

By proactively detecting and providing recommendations for addressing
security risks, CodeGuru Security improves the overall security of your
application code. For more information about CodeGuru Security, see the
Amazon CodeGuru Security User Guide
(https://docs.aws.amazon.com/codeguru/latest/security-ug/what-is-codeguru-security.html).

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codeguru-security-2018-05-10>


=head1 METHODS

=head2 BatchGetFindings

=over

=item FindingIdentifiers => ArrayRef[L<Paws::CodeGuruSecurity::FindingIdentifier>]


=back

Each argument is described in detail in: L<Paws::CodeGuruSecurity::BatchGetFindings>

Returns: a L<Paws::CodeGuruSecurity::BatchGetFindingsResponse> instance

Returns a list of requested findings from standard scans.


=head2 CreateScan

=over

=item ResourceId => L<Paws::CodeGuruSecurity::ResourceId>

=item ScanName => Str

=item [AnalysisType => Str]

=item [ClientToken => Str]

=item [ScanType => Str]

=item [Tags => L<Paws::CodeGuruSecurity::TagMap>]


=back

Each argument is described in detail in: L<Paws::CodeGuruSecurity::CreateScan>

Returns: a L<Paws::CodeGuruSecurity::CreateScanResponse> instance

Use to create a scan using code uploaded to an Amazon S3 bucket.


=head2 CreateUploadUrl

=over

=item ScanName => Str


=back

Each argument is described in detail in: L<Paws::CodeGuruSecurity::CreateUploadUrl>

Returns: a L<Paws::CodeGuruSecurity::CreateUploadUrlResponse> instance

Generates a pre-signed URL, request headers used to upload a code
resource, and code artifact identifier for the uploaded resource.

You can upload your code resource to the URL with the request headers
using any HTTP client.


=head2 GetAccountConfiguration






Each argument is described in detail in: L<Paws::CodeGuruSecurity::GetAccountConfiguration>

Returns: a L<Paws::CodeGuruSecurity::GetAccountConfigurationResponse> instance

Use to get the encryption configuration for an account.


=head2 GetFindings

=over

=item ScanName => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::CodeGuruSecurity::GetFindings>

Returns: a L<Paws::CodeGuruSecurity::GetFindingsResponse> instance

Returns a list of all findings generated by a particular scan.


=head2 GetMetricsSummary

=over

=item Date => Str


=back

Each argument is described in detail in: L<Paws::CodeGuruSecurity::GetMetricsSummary>

Returns: a L<Paws::CodeGuruSecurity::GetMetricsSummaryResponse> instance

Returns a summary of metrics for an account from a specified date,
including number of open findings, the categories with most findings,
the scans with most open findings, and scans with most open critical
findings.


=head2 GetScan

=over

=item ScanName => Str

=item [RunId => Str]


=back

Each argument is described in detail in: L<Paws::CodeGuruSecurity::GetScan>

Returns: a L<Paws::CodeGuruSecurity::GetScanResponse> instance

Returns details about a scan, including whether or not a scan has
completed.


=head2 ListFindingsMetrics

=over

=item EndDate => Str

=item StartDate => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CodeGuruSecurity::ListFindingsMetrics>

Returns: a L<Paws::CodeGuruSecurity::ListFindingsMetricsResponse> instance

Returns metrics about all findings in an account within a specified
time range.


=head2 ListScans

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CodeGuruSecurity::ListScans>

Returns: a L<Paws::CodeGuruSecurity::ListScansResponse> instance

Returns a list of all scans in an account. Does not return C<EXPRESS>
scans.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::CodeGuruSecurity::ListTagsForResource>

Returns: a L<Paws::CodeGuruSecurity::ListTagsForResourceResponse> instance

Returns a list of all tags associated with a scan.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::CodeGuruSecurity::TagMap>


=back

Each argument is described in detail in: L<Paws::CodeGuruSecurity::TagResource>

Returns: a L<Paws::CodeGuruSecurity::TagResourceResponse> instance

Use to add one or more tags to an existing scan.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::CodeGuruSecurity::UntagResource>

Returns: a L<Paws::CodeGuruSecurity::UntagResourceResponse> instance

Use to remove one or more tags from an existing scan.


=head2 UpdateAccountConfiguration

=over

=item EncryptionConfig => L<Paws::CodeGuruSecurity::EncryptionConfig>


=back

Each argument is described in detail in: L<Paws::CodeGuruSecurity::UpdateAccountConfiguration>

Returns: a L<Paws::CodeGuruSecurity::UpdateAccountConfigurationResponse> instance

Use to update the encryption configuration for an account.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 GetAllFindings(sub { },ScanName => Str, [MaxResults => Int, NextToken => Str, Status => Str])

=head2 GetAllFindings(ScanName => Str, [MaxResults => Int, NextToken => Str, Status => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - findings, passing the object as the first parameter, and the string 'findings' as the second parameter 

If not, it will return a a L<Paws::CodeGuruSecurity::GetFindingsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllFindingsMetrics(sub { },EndDate => Str, StartDate => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllFindingsMetrics(EndDate => Str, StartDate => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - findingsMetrics, passing the object as the first parameter, and the string 'findingsMetrics' as the second parameter 

If not, it will return a a L<Paws::CodeGuruSecurity::ListFindingsMetricsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllScans(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllScans([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - summaries, passing the object as the first parameter, and the string 'summaries' as the second parameter 

If not, it will return a a L<Paws::CodeGuruSecurity::ListScansResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

