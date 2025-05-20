package Paws::AccessAnalyzer::ResourceTypeStatisticsMap;
  use Moose;
  with 'Paws::API::MapParser';

  use MooseX::ClassAttribute;
  class_has xml_keys =>(is => 'ro', default => 'key');
  class_has xml_values =>(is => 'ro', default => 'value');

  has AWS::DynamoDB::Stream => (is => 'ro', isa => 'Paws::AccessAnalyzer::ResourceTypeDetails');
  has AWS::DynamoDB::Table => (is => 'ro', isa => 'Paws::AccessAnalyzer::ResourceTypeDetails');
  has AWS::EC2::Snapshot => (is => 'ro', isa => 'Paws::AccessAnalyzer::ResourceTypeDetails');
  has AWS::ECR::Repository => (is => 'ro', isa => 'Paws::AccessAnalyzer::ResourceTypeDetails');
  has AWS::EFS::FileSystem => (is => 'ro', isa => 'Paws::AccessAnalyzer::ResourceTypeDetails');
  has AWS::IAM::Role => (is => 'ro', isa => 'Paws::AccessAnalyzer::ResourceTypeDetails');
  has AWS::IAM::User => (is => 'ro', isa => 'Paws::AccessAnalyzer::ResourceTypeDetails');
  has AWS::KMS::Key => (is => 'ro', isa => 'Paws::AccessAnalyzer::ResourceTypeDetails');
  has AWS::Lambda::Function => (is => 'ro', isa => 'Paws::AccessAnalyzer::ResourceTypeDetails');
  has AWS::Lambda::LayerVersion => (is => 'ro', isa => 'Paws::AccessAnalyzer::ResourceTypeDetails');
  has AWS::RDS::DBClusterSnapshot => (is => 'ro', isa => 'Paws::AccessAnalyzer::ResourceTypeDetails');
  has AWS::RDS::DBSnapshot => (is => 'ro', isa => 'Paws::AccessAnalyzer::ResourceTypeDetails');
  has AWS::S3::Bucket => (is => 'ro', isa => 'Paws::AccessAnalyzer::ResourceTypeDetails');
  has AWS::S3Express::DirectoryBucket => (is => 'ro', isa => 'Paws::AccessAnalyzer::ResourceTypeDetails');
  has AWS::SecretsManager::Secret => (is => 'ro', isa => 'Paws::AccessAnalyzer::ResourceTypeDetails');
  has AWS::SNS::Topic => (is => 'ro', isa => 'Paws::AccessAnalyzer::ResourceTypeDetails');
  has AWS::SQS::Queue => (is => 'ro', isa => 'Paws::AccessAnalyzer::ResourceTypeDetails');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AccessAnalyzer::ResourceTypeStatisticsMap

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AccessAnalyzer::ResourceTypeStatisticsMap object:

  $service_obj->Method(Att1 => { AWS::DynamoDB::Stream => $value, ..., AWS::SQS::Queue => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AccessAnalyzer::ResourceTypeStatisticsMap object:

  $result = $service_obj->Method(...);
  $result->Att1->AWS::DynamoDB::Stream

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AWS::DynamoDB::Stream => L<Paws::AccessAnalyzer::ResourceTypeDetails>


=head2 AWS::DynamoDB::Table => L<Paws::AccessAnalyzer::ResourceTypeDetails>


=head2 AWS::EC2::Snapshot => L<Paws::AccessAnalyzer::ResourceTypeDetails>


=head2 AWS::ECR::Repository => L<Paws::AccessAnalyzer::ResourceTypeDetails>


=head2 AWS::EFS::FileSystem => L<Paws::AccessAnalyzer::ResourceTypeDetails>


=head2 AWS::IAM::Role => L<Paws::AccessAnalyzer::ResourceTypeDetails>


=head2 AWS::IAM::User => L<Paws::AccessAnalyzer::ResourceTypeDetails>


=head2 AWS::KMS::Key => L<Paws::AccessAnalyzer::ResourceTypeDetails>


=head2 AWS::Lambda::Function => L<Paws::AccessAnalyzer::ResourceTypeDetails>


=head2 AWS::Lambda::LayerVersion => L<Paws::AccessAnalyzer::ResourceTypeDetails>


=head2 AWS::RDS::DBClusterSnapshot => L<Paws::AccessAnalyzer::ResourceTypeDetails>


=head2 AWS::RDS::DBSnapshot => L<Paws::AccessAnalyzer::ResourceTypeDetails>


=head2 AWS::S3::Bucket => L<Paws::AccessAnalyzer::ResourceTypeDetails>


=head2 AWS::S3Express::DirectoryBucket => L<Paws::AccessAnalyzer::ResourceTypeDetails>


=head2 AWS::SecretsManager::Secret => L<Paws::AccessAnalyzer::ResourceTypeDetails>


=head2 AWS::SNS::Topic => L<Paws::AccessAnalyzer::ResourceTypeDetails>


=head2 AWS::SQS::Queue => L<Paws::AccessAnalyzer::ResourceTypeDetails>



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AccessAnalyzer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

