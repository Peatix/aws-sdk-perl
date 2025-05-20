
package Paws::Backup::GetSupportedResourceTypesOutput;
  use Moose;
  has ResourceTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::GetSupportedResourceTypesOutput

=head1 ATTRIBUTES


=head2 ResourceTypes => ArrayRef[Str|Undef]

Contains a string with the supported Amazon Web Services resource
types:

=over

=item *

C<Aurora> for Amazon Aurora

=item *

C<CloudFormation> for CloudFormation

=item *

C<DocumentDB> for Amazon DocumentDB (with MongoDB compatibility)

=item *

C<DynamoDB> for Amazon DynamoDB

=item *

C<EBS> for Amazon Elastic Block Store

=item *

C<EC2> for Amazon Elastic Compute Cloud

=item *

C<EFS> for Amazon Elastic File System

=item *

C<FSx> for Amazon FSx

=item *

C<Neptune> for Amazon Neptune

=item *

C<RDS> for Amazon Relational Database Service

=item *

C<Redshift> for Amazon Redshift

=item *

C<S3> for Amazon Simple Storage Service (Amazon S3)

=item *

C<SAP HANA on Amazon EC2> for SAP HANA databases on Amazon Elastic
Compute Cloud instances

=item *

C<Storage Gateway> for Storage Gateway

=item *

C<Timestream> for Amazon Timestream

=item *

C<VirtualMachine> for VMware virtual machines

=back



=head2 _request_id => Str


=cut

