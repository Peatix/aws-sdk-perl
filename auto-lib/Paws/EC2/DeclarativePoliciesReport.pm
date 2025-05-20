package Paws::EC2::DeclarativePoliciesReport;
  use Moose;
  has EndTime => (is => 'ro', isa => 'Str', request_name => 'endTime', traits => ['NameInRequest']);
  has ReportId => (is => 'ro', isa => 'Str', request_name => 'reportId', traits => ['NameInRequest']);
  has S3Bucket => (is => 'ro', isa => 'Str', request_name => 's3Bucket', traits => ['NameInRequest']);
  has S3Prefix => (is => 'ro', isa => 'Str', request_name => 's3Prefix', traits => ['NameInRequest']);
  has StartTime => (is => 'ro', isa => 'Str', request_name => 'startTime', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', request_name => 'tagSet', traits => ['NameInRequest']);
  has TargetId => (is => 'ro', isa => 'Str', request_name => 'targetId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DeclarativePoliciesReport

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::DeclarativePoliciesReport object:

  $service_obj->Method(Att1 => { EndTime => $value, ..., TargetId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::DeclarativePoliciesReport object:

  $result = $service_obj->Method(...);
  $result->Att1->EndTime

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 EndTime => Str

The time when the report generation ended.


=head2 ReportId => Str

The ID of the report.


=head2 S3Bucket => Str

The name of the Amazon S3 bucket where the report is located.


=head2 S3Prefix => Str

The prefix for your S3 object.


=head2 StartTime => Str

The time when the report generation started.


=head2 Status => Str

The current status of the report.


=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]

Any tags assigned to the report.


=head2 TargetId => Str

The root ID, organizational unit ID, or account ID.

Format:

=over

=item *

For root: C<r-ab12>

=item *

For OU: C<ou-ab12-cdef1234>

=item *

For account: C<123456789012>

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
