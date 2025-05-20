package Paws::Backup::BackupJobChildJobsInState;
  use Moose;
  with 'Paws::API::MapParser';

  use MooseX::ClassAttribute;
  class_has xml_keys =>(is => 'ro', default => 'key');
  class_has xml_values =>(is => 'ro', default => 'value');

  has ABORTED => (is => 'ro', isa => 'Int');
  has ABORTING => (is => 'ro', isa => 'Int');
  has COMPLETED => (is => 'ro', isa => 'Int');
  has CREATED => (is => 'ro', isa => 'Int');
  has EXPIRED => (is => 'ro', isa => 'Int');
  has FAILED => (is => 'ro', isa => 'Int');
  has PARTIAL => (is => 'ro', isa => 'Int');
  has PENDING => (is => 'ro', isa => 'Int');
  has RUNNING => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::BackupJobChildJobsInState

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Backup::BackupJobChildJobsInState object:

  $service_obj->Method(Att1 => { ABORTED => $value, ..., RUNNING => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Backup::BackupJobChildJobsInState object:

  $result = $service_obj->Method(...);
  $result->Att1->ABORTED

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 ABORTED => Int


=head2 ABORTING => Int


=head2 COMPLETED => Int


=head2 CREATED => Int


=head2 EXPIRED => Int


=head2 FAILED => Int


=head2 PARTIAL => Int


=head2 PENDING => Int


=head2 RUNNING => Int



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Backup>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

