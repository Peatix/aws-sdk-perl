package Paws::EC2::NetworkInsightsAccessScope;
  use Moose;
  has CreatedDate => (is => 'ro', isa => 'Str', request_name => 'createdDate', traits => ['NameInRequest']);
  has NetworkInsightsAccessScopeArn => (is => 'ro', isa => 'Str', request_name => 'networkInsightsAccessScopeArn', traits => ['NameInRequest']);
  has NetworkInsightsAccessScopeId => (is => 'ro', isa => 'Str', request_name => 'networkInsightsAccessScopeId', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', request_name => 'tagSet', traits => ['NameInRequest']);
  has UpdatedDate => (is => 'ro', isa => 'Str', request_name => 'updatedDate', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::NetworkInsightsAccessScope

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::NetworkInsightsAccessScope object:

  $service_obj->Method(Att1 => { CreatedDate => $value, ..., UpdatedDate => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::NetworkInsightsAccessScope object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedDate

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 CreatedDate => Str

The creation date.


=head2 NetworkInsightsAccessScopeArn => Str

The Amazon Resource Name (ARN) of the Network Access Scope.


=head2 NetworkInsightsAccessScopeId => Str

The ID of the Network Access Scope.


=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]

The tags.


=head2 UpdatedDate => Str

The last updated date.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
